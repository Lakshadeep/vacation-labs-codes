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
	(cube-iter 1.0 0.0 x)
 
)


(define (cube-iter guess1 guess x)(
	if (good-enough? guess1 guess )
		guess1
		(cube-iter (improve guess1 x) guess1 x )
))
			
(define (good-enough? guess1 guess)
		(< (abs (- guess1 guess)) 0.000001 )
)
			
(define (improve guess1 x)
	(IMPROVED_GUESS x guess1 )
)