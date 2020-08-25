(defun ignore-error-wrapper (fn)
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))

(defun xah-new-empty-buffer ()
  "Create a new empty buffer.
New buffer will be named “untitled” or “untitled<2>”, “untitled<3>”, etc.

It returns the buffer (for elisp programing).

URL `http://ergoemacs.org/emacs/emacs_new_empty_buffer.html'
Version 2017-11-01"
  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
    (switch-to-buffer $buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    $buf
    ))

(provide 'my-functions)
