(define (test X Y Z N)
	
	(cond ((= N 0)  0)
       (else (cond (( = N 1) Z)
                   
       		(else (cond((= N  2) Z )
                     
       			(else (cond((= N 0) Z)
       				(else (test Y Z (+ (* 3 X) (* 2 Y) Z) (- N 1) )))
                )
          		)
               )
         )
        )
       )
 )
       	