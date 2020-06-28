(define (pascal n)
    (if (= n 1) 
        (list 1)
        (pascal-iter '(1 2 1) 0 n)))

(define (pascal-iter prevList count n)
    (define (buffedList) (append '(0) prevList '(0)))
    (if (= n (+ count 1)) 
        prevList 
        (pascal-iter (condense (buffedList) '() 0) (+ count 1) n)))


(define (condense buffed newList i)
    (cond ((= i 0) (condense buffed newList (+ i 1))) 
          ((= i (- (length buffed) 1)) 
                   (append newList (list (+ (list-ref buffed i) (list-ref buffed (- i 1))))))
          (else 
          (condense buffed (append newList 
                            (list (+ (list-ref buffed i) (list-ref buffed (- i 1))))) 
                            (+ i 1)))))

