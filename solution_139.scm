(define (num x) (- 0 (* x x)))

(define (deno x) (+ (* 2 x) 1))




(define (tan-cf x k numx denox)
 	(/ x ( - 1 (cont-frac (lambda (x) (* x x))  denox k 1) )))


(define (cont-frac nump denop k start)
	(if(equal? start k)
	(/ (nump start) (denop start))
	(/ (nump start) (+ (denop start) (cont-frac nump denop  k (+ start 1))))))


