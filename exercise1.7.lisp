;; The "old" sqrt definition
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

;; The "new" improved version
(define (better-good-enough? new old)
    (< (abs (- old new)) (/ new 10000)))

(define (better-sqrt-iter guess x old) 
    (if (better-good-enough? guess old)
        guess
        (better-sqrt-iter (improve guess x) x guess)))

(define (better-sqrt x)
    (better-sqrt-iter 1.0 x 0.0))

;; This seems to work worse for very small numbers actually...
;; However it seems to increase the accuracy in the precision of squareroots.
;; e.g (sqrt 16) ==> 4.000000636692939
;; however (better-sqrt 16) ==> 4. 
;; with the latter being more exact
