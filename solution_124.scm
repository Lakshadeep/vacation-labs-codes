(define (expmod base exp m)
	(cond ((= exp 0) 1)
	((even? exp)
	(remainder (square (expmod base (/ exp 2) m))
		m))
	(else
	(remainder (* base (expmod base (- exp 1) m))
	m))
 	)
 )


(define (fermat-test n)
	(define (try-it a)
		(= (expmod a n n) a))
		(try-it (+ 1 (random (- n 1)))))


(define (fast-prime? n times)
	(cond ((= times 0) true)
	((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))


(define (timed-prime-test n)
	
	(start-prime-test n (runtime)))
(define (start-prime-test n start-time)
	(if (fast-prime? n 10)
		(report-prime n (- (runtime) start-time))))
(define (report-prime n elapsed-time)
  	(newline)
	(display n)
	(display " *** ")
 	(display elapsed-time))


(define (iter r1 r2)
 	(if (<= r1 r2 )
       (and (find (+ r1 2) r2) (timed-prime-test r1))
    )  
)

(define (find r1 r2)
	(if(even? r1) 
     (iter (+ r1 1) r2)
     (iter r1 r2)
     ) 
 ) 