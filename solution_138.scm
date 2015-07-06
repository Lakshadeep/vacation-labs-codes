(define (num k) 1.0)

(define (deno k) 
	(if (= (remainder k 3) 2)
		(- k (floor (/ k 3)))
  		1 ))


(define (cont-frac nump denop k start)
	(if(equal? start k)
	(/ (nump start) (denop start))
	(/ (nump start) (+ (denop start) (cont-frac nump denop  k (+ start 1))))))

