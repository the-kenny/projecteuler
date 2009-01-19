;;;
;;; Project-Euler #10
;;; Find the sum of all the primes below two million. 
;;;
;;; By Moritz Ulrich <ulrich (dot) moritz (at) googlemail.com>
;;;

(defun append1 (item lst)
  (append (if (listp item) item (list item)) lst))

(defun prime-list (max)
  (labels ((sieve (lst &optional (primes (list)))
                  (if (>= (expt (first lst) 2) max) 
                    (append primes lst)
                    (sieve (remove-if #'(lambda (x) (zerop (mod x (first lst)))) (rest lst)) (append1 (first lst) primes)))))
    (let ((lst (loop for n from 2 to max collecting n)))
      (sort (sieve lst) #'<=))))

(defun euler10 ()
  (apply #'+ (prime-list 2000000)))
