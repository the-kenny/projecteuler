;;;
;;; Project-Euler #8
;;; Find the greatest product of five consecutive digits in the 1000-digit number in pe8-data.txt.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun largest-product-of-consecutive (number-string length)
  (loop for i from 0 to (- (length number-string) length)
        maximizing (apply #'* (map 'list 
								   #'digit-char-p ;Parse the character to an integer
								   (subseq number-string i (+ i length)))))) ;Do this for the next five digits beginning at i

(defun euler8 ()
  (with-open-file (stream "pe8-data.txt")
    (largest-product-of-consecutive (write-to-string (read stream)) 5)))
