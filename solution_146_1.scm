(define (iterative-improve num good-enough? improve-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 0.00001))
 
  (define (AVERAGE X Y) 
          (/ (+ X Y) 2))
   
  (define (improve guess x)
      (average guess (/ x guess)))
   
  (define  (SQUARE X) (* X X))
  
 (lambda (x)
    
    (if(close-enough? num (square x) )
         (improve x num)
         (((iterative-improve num close-enough? improve) (improve x num))
         )))
 
(define (sqrt x)
  	;(lambda (y)
	     ((iterative-improve x close-enough? improve) 1.0)))