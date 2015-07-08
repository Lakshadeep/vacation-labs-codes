(define (make-mobile left right)
 (list (left right)))

 (define (left-branch x) (car x))

 (define (right-branch x) (cdr x))

(define (branch-length x) (car x))

(define (branch-strucute x) (car (cdr x)))
  
 (define (total-weight x)   ;takes mobile as parameter
	(cond ((null? x) 0)
		((not (pair? x)) x)
		(else (+ (total-weight (left-branch x))
				(total-weight (right-branch x))))))
 
 (define (balanced x)
    (if( = (total-weight (left-branch x)) (total-weight (right-branch x))) 
        (display "balanced") (display "unblanced")) )

 

