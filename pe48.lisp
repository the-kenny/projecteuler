;;;
;;; Project-Euler #48
;;; Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun euler48 ()
  (mod (loop for n from 1 to 1000 summing (expt n n)) 
       (expt 10 10))) ;The last 10 digits through modulo
