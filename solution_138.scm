(define (num k) 1.0)

(define (deno k) 
	(if (= (remainder k 3) 2)
		(- k (floor (/ k 3)))
  		1 ))


(define (cont-frac nump denop n d  k start)
	(if(equal? start k)
	(/ n d)
	(/ n (+ d (cont-frac nump denop (nump (+ start 1)) (denop (+ start 1)) k (+ start 1))))))

