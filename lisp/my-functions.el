(defun ignore-error-wrapper (fn)
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))


;;; Iterate just over file buffers
(setq my-skippable-buffers '("*Messages*" "*scratch*" "*Help*" "*Buffer List*" "*Ibuffer*"))

(defun my-change-buffer (change-buffer)
  (let ((initial (current-buffer)))
    (funcall change-buffer)
    (let ((first-change (current-buffer)))
      (catch 'loop
        (while (member (buffer-name) my-skippable-buffers)
          (funcall change-buffer)
          (when (eq (current-buffer) first-change)
            (switch-to-buffer initial)
            (throw 'loop t)))))))

(defun my-next-buffer ()
  (interactive)
  (my-change-buffer 'next-buffer))

(defun my-previous-buffer ()
  (interactive)
  (my-change-buffer 'previous-buffer))

(provide 'my-functions)
