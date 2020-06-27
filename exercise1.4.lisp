(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
;; The IF clause evaluates to the operator of + 
;; when b is positive and to the operator of - 
;; when b is negative. 
;; hence the procedure a-plus-abs-a subtracts negative values b
;; from a and it adds positive values b to a

;; example: (a-plus-abs-b 10 (- 5)) yields (- 10 (- 5)) which is the same 
;; as (+ 10 5) 
;; (a-plus-abs-b 10 5) on the other hand yields (+ 10 5) directly
;; When we take both into account we get a + |b|
;; which is what the function is supposed to do 