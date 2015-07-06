(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess) 
        guess
        ((iterative-improve good-enough? improve) (improve guess)))))
 
(define (sqrt x)
  ((iterative-improve (lambda (guess) (< (abs (- (square guess) x)) 0.001))
                      (lambda (guess) (/ (+ guess (/ x guess)) 2))) 1)) 