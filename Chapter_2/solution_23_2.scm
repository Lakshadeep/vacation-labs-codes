(define (square x) (* x x))

(define (make-point x y)
	(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (make-segment x y) 
  	(cons x y))

(define (start-segment x) (car x))

(define (end-segment x) (cdr x))


(define (make-rectangle a b )    ;takes 2 line segments
    (cons a b)
)


(define (area len bd) (* len bd))

(define (perimeter len bd) (* 2 (+ len bd)))

(define (distance x y) 
  
   (sqrt (+ (square (- (x-point x) (x-point y)))  (square (- (y-point x) (y-point y)))))
  
)


(define (calc-area x first-pointp second-pointp top-pointsp bottom-pointsp)  ;takes rectangle parameter
    (area (distance (first-pointp (top-pointsp x))
              (second-pointp (top-pointsp x)))
    	  (distance (first-pointp (top-pointsp x))
              (first-pointp (bottom-pointsp x))) )
)


(define (calc-para x first-pointp second-pointp top-pointsp bottom-pointsp)  ;takes rectangle parameter
    (perimeter (distance (first-pointp (top-pointsp x))
              (second-pointp (top-pointsp x)))
    	  (distance (first-pointp (top-pointsp x))
              (first-pointp (bottom-pointsp x))) )
)

;(calc-para (make-rectangle (make-segment (make-point 1 3) (make-point 2 3)) (make-segment (make-point 1 1) (make-point 2 1))) start-segment end-segment car cdr)

;(calc-area (make-rectangle (make-segment (make-point 1 3) (make-point 2 3)) (make-segment (make-point 1 1) (make-point 2 1))) start-segment end-segment car cdr)