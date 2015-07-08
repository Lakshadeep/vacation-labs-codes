(define (for-each proc item)
	(cond ((null? item) (list ))
		 
	(else (and	 (proc (car item)))
		(for-each proc (cdr item)))

	))