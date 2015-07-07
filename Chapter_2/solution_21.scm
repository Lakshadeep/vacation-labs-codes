(define (make-test n d) 
  (let ((g (gcd n d)))
  (if (and (< n 0) (< d 0))
  (cons (/ (* n -1) g) (/ (* d -1) g))
  (if(< d 0)
      (cons (/ ( * n -1) g) ( / (* d -1) g))
      (cons n d)))))

(define (numer x) (car x))

(define (denom x) (cdr x))


(define (print-rat x)
	(newline)
 	(display (numer x))
    (display "/")
    (display(denom x)))  
  
