(define (pascals-triangle row col)
  (cond ((or (= col 1) (= row col)) 1)
        ((or (> col row) (< col 0)) 0)
        (else (+ (pascals-triangle (- row 1) (- col 1))
                 (pascals-triangle (- row 1) col)))))

;; Testing
(pascals-triangle 1 1)
(pascals-triangle 5 3)
(pascals-triangle 5 4)
