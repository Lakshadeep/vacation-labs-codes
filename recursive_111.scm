(define (test n)
	 (cond ((< n 3) n)
	 (else  (+ (test (- n 1)) (* 2 (test (- n 2))) (* 3 (test (- n 3))))))
	 	

)

