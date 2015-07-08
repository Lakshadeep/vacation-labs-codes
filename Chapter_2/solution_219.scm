(define (list-item item n)
	(if(= n 0)
		(car item)
		(list-item (cdr item) (- n 1)))
)

(define us-coins (list 50 25 10 5 1))


(define (cc amount coin-values)
	(cond ((= amount 0) 1)
		((or (< amount 0) (no-more? coin-values)) 0)
		(else
			(+ (cc amount
				(except-first-denomination coin-values))
		(cc (- amount
				(first-denomination coin-values))
				coin-values)))))

(define (first-denomination kinds-of-coins)
  	(car kinds-of-coins))

(define (except-first-denomination kinds-of-coins)
   (cdr kinds-of-coins)
 )
	
(define (no-more? coin-values)
	(null? coin-values) 
)