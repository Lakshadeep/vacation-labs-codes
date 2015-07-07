(define (square x) (* x x))

(define (make-point x y)
	(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (make-rectangle a b c d)
    (cons (cons a b ) (cons c d ))
)

(define (top-points x)  (car x))   ;takes make rectangle as argument

(define (bottom-points x) (cdr x))  ;takes make rectangle as argument

(define (first-point x) (car x))   ;takes top point as argument

(define (third-point x) (car x))    ;takes bottom point as argument

(define (second-point x) (cdr x))  ;takes top point as argument

(define (fourth-point x) (cdr x))  ;takes bottom point as argument

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
;((calc-area (make-rectangle (make-point 1 3) (make-point 2 3) (make-point 1 1) (make-point 2 1)) first-point second-point top-points bottom-points)
;(calc-para (make-rectangle (make-point 1 3) (make-point 2 3) (make-point 1 1) (make-point 2 1)))
