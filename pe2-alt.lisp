;;;
;;; Project-Euler #2
;;; Find the sum of all the even-valued terms in the Fibonacci-Sequence which do not exceed four million.
;;;
;;; NOTE: This is an ugly method because it creates a list of 1000 integers first (But it works...)
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun append1 (item lst)
  (append (if (listp item) item (list item)) lst))

(defun fibonacci-list (i)
  (do ((n 0 (1+ n))
       (cur 0 next)
       (next 1 (+ cur next))
       (lst (list) (append1 next lst)))
    ((= (1+ i) n) lst)))

(defun euler2 ()
  (let ((lst (fibonacci-list 1000)))
    (apply #'+ (remove-if #'(lambda (x) (or (evenp x ) (>= x 4000000))) lst))))
