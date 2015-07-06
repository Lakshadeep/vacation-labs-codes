(define (cont-frac  n d  k)
	(define (iter k result)
		(if(= k 0)
			result
      		(iter (- k  1) (/ n (+ d result )))))
     (iter k (/ n d)))



(define tolerance 0.00001)
(define value 0.618046971)
	(define (fixed-point f first-guess n d )
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		;(let (next (f n d guess)
		(if (close-enough? value (f n d guess))
			guess
			(try (+ guess 1))))
 	(try first-guess))