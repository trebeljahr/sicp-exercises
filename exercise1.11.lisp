(define (recursive-f n) 
    (cond ((< n 3) n)
          (else (+ (recursive-f (- n 1))
                   (* 2 (recursive-f (- n 2)))
                   (* 3 (recursive-f (- n 3)))
                   ))))

(define (iterative-f n) 
    (define (f-iter a b c count) 
        (cond ((< n 3) b) 
          ((= count 0) a)
          (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
    (f-iter 2 1 0 (- n 2)))


