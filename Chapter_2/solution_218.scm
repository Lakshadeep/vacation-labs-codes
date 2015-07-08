(define (append list1 list2)
	(if (null? list1)
	list2
	(cons (car list1) (append (cdr list1) list2))))


(define (reverse item)
 (if(null? (cdr item))
 	item
 	(append (reverse (cdr item)) (list (car item)) )
 ))
