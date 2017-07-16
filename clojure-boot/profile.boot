(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
	concat '[[cider/cider-nrepl "0.15.0-SNAPSHOT"]])

(swap! boot.repl/*default-middleware*
	conj 'cider.nrepl/cider-middleware)

#_(set-env!
 :mirrors {"central" {:name "central" :url "http://maven.oschina.net/content/groups/public/"}})
