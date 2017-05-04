(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (first-is-smallest x y z) (and (< x y) (< x z)))
(define (sum-of-squares-of-largest x y z) (cond ((first-is-smallest x y z) (sum-of-squares y z))
                                                ((first-is-smallest y x z) (sum-of-squares x z))
                                                (else (sum-of-squares x y))))

;; Testing
(sum-of-squares-of-largest 3 4 5)
(sum-of-squares-of-largest 4 3 5)
(sum-of-squares-of-largest 3 5 4)
(sum-of-squares-of-largest 3 3 3)
(sum-of-squares-of-largest 4 3 3)
