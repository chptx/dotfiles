#!/bin/bash

# anst: Android Native Stacktrace.

#Author: chptx
#Date: 02/20/2012

#append the following lines to your vendorsetup.sh or build/envsetup.sh
#and run these commands sequence:
#  $. build/envsetup.sh
#  $lunch 
#and then you can use the 'anst' command.
#-------------[ cut here ]----------------
function anst {
pversion="0.0.9"
if test -z "$1" -o ! -f "$1"; then
	echo "Invalid input file"
	echo " "
	echo "anst: Android Native Stacktrace."
	echo "Version $pversion"
	echo "Useage: anst INPUT_FILE"
	echo "     where INPUT_FILE is tombstone_xx or the file contains 'logcat' outputs"
	return
fi

if [ x"$(type -t get_abs_build_var)" != x"function" ]; then
	echo "Please run 'lunch' first."
fi

ver=$(get_build_var PLATFORM_VERSION)
if [ "${ver%%.*}" -lt "4" ]; then
	addr2line_tool=arm-eabi-addr2line
else
	addr2line_tool=$(get_abs_build_var TARGET_TOOLS_PREFIX)addr2line
fi

symbol_dir=$(get_abs_build_var TARGET_OUT_UNSTRIPPED)

if test -z "$(which $addr2line_tool)"; then
	echo "No addr2line tool found with name: $addr2line_tool";
	return
fi

if test -z "$symbol_dir"; then
	return
fi

gawk --re-interval -v addr2line_tool=$addr2line_tool \
	-v symbol_dir=$symbol_dir -f <(cat >&1 <<"EOF"
/pid: [0-9]{1,5}, tid: [0-9]{1,5}/ {
	print "\n"$0
}

/signal [0-9]{1,2} \(.*\)/ {
	print $0
}

match($0, /#[0-9]{2}  pc ([0-9a-f]{8})  ([^ \r]+).*\r*$/, res) {
	#print $0
	report_cmd=addr2line_tool" -Cfse "symbol_dir res[2]" "res[1]
	printf ">"

	while (report_cmd | getline l) {
		printf "    %s", l
	}
	printf "\n"
	close(report_cmd)
}
EOF
) $1
}

#---------------[ end ]------------------
