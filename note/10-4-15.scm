(define f1 (lambda (x) (let ((y 0)) 
                         (begin (set! y (+ y x)) y))))

(define f2 (let ((y 1)) (lambda (x) (begin (set! y (+ y x)) y)
                          )))
(f2 0)
