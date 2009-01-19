;;;
;;; Project-Euler #7
;;; What is the 10001st prime number? 
;;;
;;; NOTE: This is an ugly method because it creates a list of primes up to 150,000... 
;;; 	  Need to implement method to get the nth prime
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

(defun euler7 ()
  (nth (1- 10001) (prime-list 150000)))
