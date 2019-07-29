
;;compilation buffer should be vertical
(defadvice compile (around split-horizontally activate)
  "This takes care that new compilation buffers is verticaly."
  (let ((split-width-threshold nil)
        (split-height-threshold 10)
        (compilation-window-height 15))
    ad-do-it))

;;scroll with the output to the first error
(setq compilation-scroll-output 'first-error)

(defun run-cmake (build_type)
  "run cmake for the current project"
  (interactive)
  (progn
    (setq compile-command
          (concat "cmake "
                  "-DCMAKE_EXPORT_COMPILE_COMMANDS=1 "
                  "-DUSE_CLANG=1 "
                  "-DCMAKE_BUILD_TYPE="
				  build_type
                  " -DBUILD_TESTS=1 "
                  "-S "
                  (projectile-project-root)
                  " -B "
                  (projectile-project-root)
                  "build"))
    (call-interactively 'compile)))

(defun set-release-compile-command ()
  "set compile command to release build"
  (setq compile-command
        (concat "cmake --build "
                (projectile-project-root)
                "build/")))

(defun set-debug-compile-command ()
  "set compile command to debug build"
  (setq compile-command
        (concat "cmake --build "
                (projectile-project-root)
                "build/")))

(defun compile-debug ()
  "compile project with debug flags"
  (interactive)
  (progn
    (call-interactively '(lambda () (interactive) (run-cmake "Debug")))
    (set-debug-compile-command)
    (call-interactively 'compile)))

(defun compile-release ()
  "compile project with release flags"
  (interactive)
  (progn
    (call-interactively '(lambda () (interactive) (run-cmake "Release")))
    (set-release-compile-command)
    (call-interactively 'compile)))

(defun my-c-c++-mode-hook-fn ()
  (evil-leader/set-key
    "pd"    'compile-debug
    "pr"    'compile-release))

(add-hook 'c-mode-hook #'my-c-c++-mode-hook-fn)
(add-hook 'c++-mode-hook #'my-c-c++-mode-hook-fn)
