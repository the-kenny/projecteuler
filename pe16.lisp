;;;
;;; Project-Euler #16
;;; What is the sum of the digits of the number 2^(1000)?
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun euler16 (n)
  "Sums the digits of 2^n"
  (let ((number-string (write-to-string (expt 2 n))))
    (loop for i across number-string
          summing (parse-integer (string i)))))
