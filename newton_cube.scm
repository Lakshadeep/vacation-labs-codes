( DEFINE 
  	(SQUARE X) (* X X)
)


(DEFINE (ABS X)
	(COND ((> X 0) X)
		((= X 0) 0)
		((< X 0)(- X))
		)
 )

(DEFINE (CUBE X)
   (* X X X)
)


(DEFINE (IMPROVED_GUESS X GUESS) 
     (/ (+ (/ X (SQUARE GUESS)) (* 2 GUESS)) 3)
 )

(define (cbrt x)
	(cube-iter 1.0 x)
 
)


(define (cube-iter guess x)(
	if (good-enough? guess x)
		guess
		(cube-iter (improve guess x) x))
)
			
(define (good-enough? guess x)
		(< (abs (- (cube guess) x)) (* 0.00001 X))
)
			
(define (improve guess x)
	(IMPROVED_GUESS x guess )
)