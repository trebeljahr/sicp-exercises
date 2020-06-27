(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

;; This is the same problem that we have seen earlier in 
;; exercise 1.5 in disguise. 
;; Since the interpreter is going to substitute the else-clause in 
;; define new-if with a procedure evaluation of sqrt-iter -
;; which in in turn has a new-if which is going to substitute the 
;; else clause by a procedure evaluation of sqrt-iter 
;; it is going to be stuck in a loop just like the test programm
;; in exercise 1.5