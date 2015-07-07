(define (num x) (- 0 (* x x)))

(define (deno x) (+ (* 2 x) 1))




(define (tan-cf x k numx denox)
 	(/ x ( - 1 (cont-frac x numx denox k 1))))


(define (cont-frac val nump denop k start)
	(if(equal? start k)
	(/ (nump val) (denop start))
	(/ (nump val) (+ (denop start) (cont-frac val nump denop  k (+ start 1))))))


