;;;
;;; Project-Euler #20
;;; Find the sum of the digits in the number 100!
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun factorial (n &optional (acc 1))
  (if (zerop n) 
      acc
    (factorial (1- n) (* acc n))))

(defun explode-integer (n)
  (map 'list #'digit-char-p (write-to-string n)))

(defun euler20 ()
  (apply #'+ (explode-integer (factorial 100))))
