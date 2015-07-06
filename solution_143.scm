(define (square x) (* x x))

(define (repeated sq x) 
	(lambda (y) (expt (sq y) x) ))

(define (repeat f y) 
  (lambda (x)
    (define (iter z result)
	(if(> z 0)
		(iter (- z 1) (f result))
		result))
	(iter y x) 
    
  )
  )
  


