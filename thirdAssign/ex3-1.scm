(define (make-accumulator ini)
  (lambda (change)
    (begin (set! ini (+ ini change)) ini)))
