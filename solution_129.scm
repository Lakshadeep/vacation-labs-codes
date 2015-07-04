
(define (cube x) (* x x x))

(define (next x) (+ x 1))

(define (simpson  f a b n k)

	

	(define h (/ (- b a) n) )

	(define (yk k) (f (+ a (* k h))))

	(define (term k) 
        (if(= k 0) (* 1 (yk k))
         (if(= k n) (* 1 (yk k))       
                      
		(if(even? k) 
		 (* 2 (yk k))
		 (* 4 (yk k))))))
   
   
	
	(* (/ h 3) (sum term k  next k  n))
	

)

(define (sum termp a nextp b n)
	(if(> a n)
	0
	(+ (termp a) (sum termp (nextp a) nextp b n))))