(define (makepower) (let ((x 1))
       (lambda () (begin (set! x (* 2 x)) x))))

(define power (makepower))
