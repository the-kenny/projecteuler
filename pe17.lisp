;;;
;;; Project-Euler #17
;;; If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?  
;;; NOTE: - and <SPACE> doesn't count. The "and" in "one hundred and ten" counts.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun length-of-number (n)
  (let ((string (format nil "~r" n)))
    (print string)
    (+ (if (and (> n 100) (not (zerop (mod n 100)))) 3 0) ; If the last two digits are smaller than 100, we have to add 3 for the "and" like "one hundred *and* then
	(count-if #'(lambda (x) (not (or (char-equal x #\-) (char-equal x #\Space)))) string))))

(defun length-of-numbers-to (n)
  (loop for i from 1 to n
        for length = (length-of-number i)
        summing length))
