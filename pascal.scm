(define (pascal row col)
	(cond ((= row col) 1)
	((= col 0) 1)
	 ((> col row) 0)
	 ((> row col) 
          (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))
	 ))
	



)