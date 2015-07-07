(define (make-interval a b) (cons a b))

(define (upper-bound x) (cdr x))

(define (lower-bound x) (car x))

(define (make-center-percent c per)
	(make-interval (- c (* c (/ per 100)))  (+ c (* c (/ per 100)))   )
)