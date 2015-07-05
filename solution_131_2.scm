(define (inc x) (+ x 1))


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



(define (product termp a next b)
	(define (iter a result)
	(if(< a b)
		(iter (next a) (* (termp a) result))
		result))
	(iter a 1))