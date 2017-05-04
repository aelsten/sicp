(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (<= (abs (- (improve guess x) guess))
       (* guess 0.001)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 0.0001)
(sqrt 10000000000000)
(sqrt 0)
