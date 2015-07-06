(define (cube x) ( * x x x))

(define (square x) (* x x))

(define (identity x) x)

(define (smooth f) 
  	(define (avg x y z) (/ (+ x y z ) 3))
   	(define dx 0.1)
   
	(lambda (x) (avg (f (- x dx)) (f x) (f (+ x dx)))))

(define (repeat f fn2 y) 
  (lambda (x)
    (define (iter z result)
	(if(> z 0)
		(iter (- z 1) ((f fn2) result))
		result))
	(iter y x) 
    
  )
  )
  

