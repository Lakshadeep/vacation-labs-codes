(define (last-pair item)
	(if (null? (cdr item))
		(car item)
		(last-pair (cdr item))))



