(define (square x) (* x x))

(define (cont-frac  n d  k start)
	(if(equal? start k)
	(/ (square n) (+ start (* k 2)))
	(/ (square n) (- (+ d (* start 2)) (cont-frac n d  k  (+ 1 start))))))


(define (tan-cf x k)
 (/ x ( + 1 (cont-frac x 1 k 1)))
)


