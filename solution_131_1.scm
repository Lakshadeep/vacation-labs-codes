(define (dec x) (- x 1))
(define (identity x) x)




(define (term x)
  (define (num x)
	(if(even? x)
	 	(+ x 2)
	 	(+ x 1)))

   (define (deno x)
	(if(even? x)
	 	(+ x 1)
	 	(+ x 2)))
  
  ( / (num x) (deno x)))


(define (product termp a nextp b)
  	(if(> b a) 
    	(* (termp  b) (product termp a nextp (nextp b) ))
		(termp b)))
