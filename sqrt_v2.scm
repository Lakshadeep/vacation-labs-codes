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
	(sqrt-iter 1.0 0.0 x)
 
)

(define (sqrt-iter guess1 guess x)(
	if (good-enough? guess1 guess )
		guess1
		(sqrt-iter (improve guess1 x) guess1 x))
)
			
(define (good-enough? guess1 guess)
		(< (abs (- guess1 guess)) 0.000001)
)
			
(define (improve guess x)
	(average guess (/ x guess))
)