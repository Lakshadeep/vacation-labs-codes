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

(define (timed-prime-test n count)
	
	(start-prime-test n (runtime) count))
(define (start-prime-test n start-time count)
	(if (prime? n)
		(report-prime (- (runtime) start-time) n (- count 1))
  		((find (+ n 2 ) count))))
(define (report-prime elapsed-time n count)
  	(newline)
	(display n)
	(display " *** ")
 	(display elapsed-time)
  	(display " *** ")
 	(display count)
 	(find (+ n 2) count )
 )


(define (iter r1 count)
 	(if (> count 0)
       ( (timed-prime-test r1 count))
       
    )  
)

(define (find r1 count)
	(if(even? r1) 
     (iter (+ r1 1) count)
     (iter r1 count)
     )  
  
)