(defvar cljr-helm-options
  '(("ad: add declaration" . cljr-add-declaration)
    ("ai: add import to ns" . cljr-add-import-to-ns)
    ("ap: add project dependency" . cljr-add-project-dependency)
    ("am: add missing libspec" . cljr-add-missing-libspec)
    ("ar: add require to ns" . cljr-add-require-to-ns)
    ("au: add use to ns" . cljr-add-use-to-ns)
    ("cn: clean ns" . cljr-clean-ns)
    ("cc: cycle coll" . cljr-cycle-coll)
    ("ci: cycle if" . cljr-cycle-if)
    ("cp: cycle privacy" . cljr-cycle-privacy)
    ("cs: cycle stringlike" . cljr-cycle-stringlike)
    ("ct: cycle thread" . cljr-cycle-thread)
    ("dk: destructure keys" . cljr-destructure-keys)
    ("el: expand let" . cljr-expand-let)
    ("ef: extract function" . cljr-extract-function)
    ("fu: find usages" . cljr-find-usages)
    ("hd: hotload dependency" . cljr-hotload-dependency)
    ("il: introduce let" . cljr-introduce-let)
    ("mf: move form" . cljr-move-form)
    ("ml: move to let" . cljr-move-to-let)
    ("pc: project clean" . cljr-project-clean)
    ("pf: promote function" . cljr-promote-function)
    ("rf: rename file" . cljr-rename-file)
    ("rl: remove let" . cljr-remove-let)
    ("rs: rename symbol" . cljr-rename-symbol)
    ("rr: remove unused requires" . cljr-remove-unused-requires)
    ("ru: replace use" . cljr-replace-use)
    ("sn: sort ns" . cljr-sort-ns)
    ("sp: sort project dependencies" . cljr-sort-project-dependencies)
    ("sr: stop referring" . cljr-stop-referring)
    ("tf: thread first all" . cljr-thread-first-all)
    ("th: thread" . cljr-thread)
    ("tl: thread last all" . cljr-thread-last-all)
    ("ua: unwind all" . cljr-unwind-all)
    ("uw: unwind" . cljr-unwind)
    ("rd: remove debug fns" . cljr-remove-debug-fns)))

(defvar helm-source-cljr
  '((name . "cljr functions")
    (init . (lambda ()
              (helm-init-candidates-in-buffer 'global (mapcar 'car cljr-helm-options))))
    (candidates-in-buffer)
    (persistent-action . ignore)
    (action  . (("Run" . (lambda (candidate)
                           (funcall (cdr (assoc candidate cljr-helm-options)))))))))

(helm-other-buffer 'helm-source-cljr "*cljr*")
