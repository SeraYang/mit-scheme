(define counter2 (lambda () 
   (let ((x 0))   
     (begin (set! x (+ 1 x))
            x))))     ;; x won't accumulate

(define counter3 
  (let ((x 0))
	(lambda () 
	  (set! x (+ 1 x)) 
	  x)))     ;; x will accumulate
