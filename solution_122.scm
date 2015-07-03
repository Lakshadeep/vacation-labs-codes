(define (square x) (* x x))

(define (smallest-divisor n)
	(find-divisor n 2))

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
	(= (remainder b a) 0))

(define (prime? n)
	(= n (smallest-divisor n)))

(define (timed-prime-test n)
	(newline)
	(display n)
	(start-prime-test n (runtime)))
(define (start-prime-test n start-time)
	(if (prime? n)
		(report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
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