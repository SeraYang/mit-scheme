(define (MultiFor i x)
  (if (> i 0) (* x (MultiFor (- i 1) x))
			  1))
