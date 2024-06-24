
;; Add MELPA repository for package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure that use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable Evil mode at startup
(use-package evil
  :ensure t
  :config
  (evil-mode 1))
