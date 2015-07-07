(define (make-interval a b) (cons a b))

(define (upper-bound x) (cdr x))

(define (lower-bound x) (car x))

(define (sub-interval a b) 
	(make-interval (- (lower-bound b) (lower-bound a))
		(- (upper-bound b) (upper-bound a))
))