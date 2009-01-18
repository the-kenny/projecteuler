;;;
;;; Project-Euler #1
;;; Find the sum of all the multiples of 3 or 5 below 1000.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun sum-naturals (n &optional (acc 0))
  (cond ((= n 0) acc)
        ((or (= 0 (mod n 3)) (= (mod n 5) 0)) (sum-naturals (1- n) (+ acc n)))
        (t (sum-naturals (1- n) acc))))

(print (sum-naturals 999))
