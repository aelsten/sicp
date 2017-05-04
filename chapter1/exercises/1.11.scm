;; using recursive process:
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

;; testing recursive process
(f 2)
(f 3)
(f 5)

;; using iterative process:
(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0)
    c
    (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

;; testing iterative process
(f 2)
(f 3)
(f 5)
