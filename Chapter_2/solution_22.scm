

(define (make-segment x y) 
  	(cons x y))

(define (start-segment x) (car x))

(define (end-segment x) (cdr x))

(define (make-point x y)
	(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (start-segment x) (car x))

(define (end-segment x) (cdr x))

(define (print-point p)
 	(newline)
  	(display "(")
   	(display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))
  
  
(define (mid-point x)


  
	
(print-point (make-point (/ (+ (x-point (start-segment x))  (x-point (end-segment x))) 2)
 	(/ (+ (y-point (start-segment x))  (y-point (end-segment x))) 2))
  
    
))
  

;(mid-point (make-segment (make-point 3 4) (make-point 5 6)))