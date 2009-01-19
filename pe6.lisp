;;;
;;; Project-Euler #6
;;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. 
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun square (n)
  (expt n 2))

(defun euler6 (n)
  "Find the difference between the sum of the squares of the first n numbers and the square of the sum."
  (let ((numbers (loop for n from 1 to n collecting n)))
	(- (square (apply #'+ numbers))
	   (apply #'+ (mapcar #'square numbers)))))
