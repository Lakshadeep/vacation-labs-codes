(define (square-tree tree) 
    (tree-map square tree))

(define (square x) (* x x))

(define (tree-map proc tree)
 (map (lambda (sub-tree)
	(if (pair? sub-tree)
		(tree-map proc sub-tree )
		(proc sub-tree)))
		tree))

;(define list1 (list 1 2 (list 3 4 )))