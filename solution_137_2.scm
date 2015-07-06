(define (num x) 1.0)
(define (deno x) 1.0)


(define (cont-frac  numx denox  k)
	(define (iter k result)
		(if(= k 0)
			result
      		(iter (- k  1) (/ (numx k) (+ (denox k) result )))))
     (iter k (/ (numx k) (denox k))))



(define tolerance 0.00001)
(define value 0.618046971)
	(define (fixed-point f first-guess numx denox )
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		;(let (next (f n d guess)
		(if (close-enough? value (f numx denox guess))
			guess
			(try (+ guess 1))))
 	(try first-guess))