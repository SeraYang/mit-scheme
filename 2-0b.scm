(define (euclid a b)
  (if (= b 0) a
              (euclid b (remainder a b))))
