(define (make-point x y)
	(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))


(define (make-segment x y) 
  	(cons x y))

(define (start-segment x) (car x))

(define (end-segment x) (cdr x))

(define (print-point p)
 	(newline)
  	(display "(")
   	(display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))
  
  

