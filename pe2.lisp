;;; INCORRECT!
;;;
;;; Project-Euler #2
;;; Find the sum of all the even-valued terms in the Fibonacci-Sequence which do not exceed four million.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun sum-if (fn val &rest args)
  "Sum args to val if fn on val is true. Else return val unchanged"
  (let ((r (funcall fn val)))
    (if r
      (apply #'+ val args)
      val)))

(defun sum-even-fibonacci (n &optional (acc 0))
  (if (<= n 1) 
    n
    (sum-if #'evenp (+ (sum-even-fibonacci (1- n)) (sum-even-fibonacci (- n 2))) acc)))

(sum-even-fibonacci 5)
