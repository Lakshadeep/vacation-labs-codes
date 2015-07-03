(define (even? n)
	(= (remainder n 2) 0))

(define (double n)
   (+ n n)
)

(define (half n)
  (if (even? n) (/ n 2))
  
)

        
         
(define (* a b)
    (cond ((= b 0)
      0 )
      ((even? b) (double (* a (/ b 2))))
     ((+ a (* a (- b 1))))
      
      )
 )   