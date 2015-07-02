( DEFINE 
  	(SQUARE X) (* X X)
)


(DEFINE (ABS X)
	(COND ((> X 0) X)
		((= X 0) 0)
		((< X 0)(- X))
		)
 )


(DEFINE (AVERAGE X Y) 
        (/ (+ X Y) 2)
 )


(define (sqrt x)
	(sqrt-iter 1.0 x)
 
)

(define (sqrt-iter guess x)(
	if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x))
)
			
(define (good-enough? guess x)
		(< (abs (- (square guess) x)) (* 0.001 X))
)
			
(define (improve guess x)
	(average guess (/ x guess))
)