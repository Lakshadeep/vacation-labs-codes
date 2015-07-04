(define (inc x) (+ x 1))
(define (identity x) x)

(define (sum term a next b)
	(define (iter a result)
	(if(<= a b)
		(iter (+ a 1) (+ a result))
		result))
	(iter a 0))