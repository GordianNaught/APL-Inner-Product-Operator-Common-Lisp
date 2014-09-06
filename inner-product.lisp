(defun transpose (m)
  (apply #'mapcar #'list m))

(defun inner-product (LF RF)
  (lambda (⍺ ⍵)
    (mapcar (lambda (row)
              (mapcar (lambda (column)
                        (reduce LF
                                (mapcar RF row column)))
                      (transpose ⍵)))
            ⍺)))

(defun matrix-multiplication (a b)
  (funcall (inner-product #'+ #'*) a b))
