(define (kinds coin)
    (cond ((= coin 1) 1)
          ((= coin 2) 5)
          ((= coin 3) 10)
          ((= coin 4) 25)
          ((= coin 5) 50)))

(define (count-change amount) (cc amount 5))
(define (cc amount coin)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= coin 0)) 0)
          (else (+ (cc amount
                        (- coin 1)) 
                   (cc (- amount
                            (kinds coin))
                        coin)))))