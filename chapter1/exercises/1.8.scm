(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

(define (square x) (* x x))

(define (improve guess x)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))

(define (good-enough? guess x)
    (<= (abs (- (improve guess x) guess))
        (abs (* guess 0.001))))

(define (cube-root x)
    (cube-root-iter 1.0 x))

;; Testing
(cube-root 27)
(cube-root -8)
(cube-root 0.0001)
(cube-root 10000000000000)
(cube-root 0)
