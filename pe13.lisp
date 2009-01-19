;;;
;;; Project-Euler #13
;;; Work out the first ten digits of the sum of the one-hundred 50-digit numbers in pe13-data.txt.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun read-numbers (file)
  (with-open-file (stream file)
    (loop for num = (read stream nil)
          while num collect num)))

(defun euler13 ()
  (subseq (write-to-string (apply #'+ (read-numbers "pe13-data.txt"))) 
		  0 ;They want just the first 10 digits... how boring
		  10))
