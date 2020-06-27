;; Ben's test for applicative vs. normal-order evaluation
(define (p) (p))
(define (test x y)
    (if (= x 0) 
        0 
        y
    ))

;; if the interpreter uses applicative-order evaluation it 
;; will substitute y with p since x = 0 and then it will try to 
;; resolve p by substituting p in the function p with p and then
;; evaluate p because p just evaluates p.
;; since p is still the function p however the program enters an 
;; infinite loop and get's stuck. 

;; if the interpreter uses normal-order evaluation it will 
;; expand the whole procedure first - yielding something like
;; (if (= x 0) 0 y) it did not substitute p for y yet - and 
;; since it first resolves x = 0 it will never go on and 
;; substitute p for y - therefore not getting stuck in the
;; endless loop
