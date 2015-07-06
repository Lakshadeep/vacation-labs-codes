(define (square x) (* x x))

(define (inc x) (+ x 1))

(define (compose sq in)
	(lambda (x) (sq (in x))))