(define (append list1 list2)
	(if (null? list1)
	list2
	(cons (car list1) (append (cdr list1) list2))))


(define (dep-reverse item)
 (if(null? item)
 	(list)
  	(if(pair? (car item))
 	(append (dep-reverse (cdr item)) (list (dep-reverse (car item)) ))
  	(append (dep-reverse (cdr item)) (list (car item) )))
 ))
