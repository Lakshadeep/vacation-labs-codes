(define (make-interval a b) (cons a b))

(define (upper-bound x) (cdr x))

(define (lower-bound x) (car x))


(define (width a)
	(/ ( + (upper-bound a) (lower-bound a)) 2)

)

; Width of adding 2 intervals is equal to sum of width of 2 intervals


; Width of subtracting 2 intervals is equal to subtraction of width of 2 intervals


; above property doesnt hold for division and multiplication
