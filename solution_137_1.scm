(define (num x) 1.0)
(define (deno x) 1.0)


(define (cont-frac nump denop k start)
	(if(equal? start k)
	(/ (nump start) (denop start))
	(/ (nump start) (+ (denop start) (cont-frac nump denop  k (+ start 1))))))


(define tolerance 0.00001)
(define value 0.618046971)
(define (fixed-point f first-guess numx denox )
(define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
(define (try guess)
	;(let (next (f n d guess)
	(if (close-enough? value (f numx denox guess 0))
		guess
		(try (+ guess 1))))
	(try first-guess))


