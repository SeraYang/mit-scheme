(define add (lambda (x y) (+ x y)))

(define (fold f identity L)
  (if (null? L) identity (f (car L) (fold f identity (cdr L)))))

(define f (let ((x 0)) (lambda () 
                         (begin (set! x (+ x 2))
                                x))))

(define euclid (lambda (x y) (if (= 0 y) x (euclid y (remainder x y)))))
