(define (make-test n d) 
  (if (and (< n 0) (< d 0))
  (cons (* n -1) (* d -1))
  (if(< d 0)
      (cons (* n -1) (* d -1))
      (cons n d))))

(define (numer x) (car x))

(define (denom x) (cdr x))
