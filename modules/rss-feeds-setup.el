;; newer version of compat required by elfeed
;; than built into emacs 30.2-r3
(use-package compat
  :ensure t)

(use-package elfeed
  :after compat
  :config
  (setq elfeed-feeds
        '("https://chipsandcheese.com/feed"
          "https://blog.llvm.org/index.xml"
          "https://www.twoscomplement.org/podcast/feed.xml"
          "https://lemire.me/blog/feed/"
          "https://eli.thegreenplace.net/feeds/all.atom.xml"
          "https://wingolog.org/feed/atom"
          "https://blog.janestreet.com/feed.xml"
          ;; lobster.rs (too noisy to add rn)
          ;; hackernews (too noisy to add rn)
          )))

(provide 'rss-feeds-setup)
