(define (kinds coin)
    (cond ((= coin 1) 1)
          ((= coin 2) 5)
          ((= coin 3) 10)
          ((= coin 4) 25)
          ((= coin 5) 50)))

(define (count-change amount) (cc amount 5))
(define (cc amount coin)
    (define noMoreCoinTypes (= coin 0))
    (define (subtract coin amount) (- amount (kinds coin)))
    (define givenToMuch (< amount 0))
    (define nextCoinType (- coin 1))
    
    (cond ((= amount 0) 1)
          ((or givenToMuch noMoreCoinTypes) 0)
          (else (+ (cc amount (nextCoinType)) 
                   (cc (subtract coin amount) coin)))))

;; (count-change 11)
;; (cc 11 5)
;; (+ (cc 11 4) 0)
;; (+ (cc 11 3) (cc 11 3) 0 0)
;; (+ (cc 11 2) (cc 11 2) 0 0 0 )
;; (+ (cc 11 1) (cc 11 1) (cc 11 1))
;; (+ (cc 11 0) (cc 11 0) (cc 11 0) (cc 11 0))

;; the tree grows with bigger inputs as a time continues on

