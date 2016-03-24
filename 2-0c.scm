(define (lproduct m)
  (if (list? m)
    (if (= 0 (length m))
        1
        (* (car m) (lproduct (cdr m))))))

(define tailprodu 
  (lambda (m)
    (define f (lambda (x y) 
                (if (list? y)
                  (if (= 0 (length y))
                    x
                    (f (* x (car y)) (cdr y)))
                  "Empty list!!!")))
    (f 1 m)))
