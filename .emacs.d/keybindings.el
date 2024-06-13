(defun my-wl-copy (start end command)
  "Execute shell-command on the selected region but do not replace it with the output."
  (interactive "r\nsShell command on region: ")
  (shell-command-on-region start end 'wl-copy' nil nil))

(defun my-wl-paste ()
  (interactive)
  (shell-command "wl-paste" t t))

(global-set-key (kbd "C-Sc") 'my-wl-copy)
(global-set-key (kbd "C-S-v") 'my-wl-paste)
