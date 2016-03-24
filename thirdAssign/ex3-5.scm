; Because the P(x,y) was generated many times automatically,
; I think I don't need the parameter "p".

(define (estimate-integral x1 x2 y1 y2 trials)

  (define (random-in-range low high)
    (let ((range (- high low)))
      (+ low (random range))))
  
  (define (max a b)
    (if(> b a) b a))
  
  (define (min a b)
    (if(< b a) b a))
  
  (define (check x0 y0) 
    (if (>= 9 (+ (* (- x0 5) (- x0 5)) (* (- y0 7) (- y0 7))))
      #t #f))

  (define (compute x1 x2 y1 y2 remain pass)
    (let ((x (random-in-range (min x1 x2) (max x1 x2)))
          (y (random-in-range (min y1 y2) (max y1 y2))))
      (cond ((= 0 trials) "No trials input!!!!")
            ((= 0 remain) (/ pass (* trials 1.0))) ; Caution: (/ pass x) will
                                                   ; return (pass/x)
            ;((= 0 remain) pass)
            ((check x y) (compute x1 x2 y1 y2 (- remain 1) 
                                              (+ pass 1)))
            (else (compute x1 x2 y1 y2 (- remain 1) pass)))))

  (define (area) (* (compute x1 x2 y1 y2 trials 0)
                  (- (max x1 x2) (min x1 x2))
                  (- (max y1 y2) (min y1 y2))))

  ;(define (showpass) (* (compute x1 x2 y1 y2 trials 0)))
  (define (estimate-pi) (/ (area) 9.0))

  (estimate-pi))
  ;(showpass))
  ;(area))
  ;(compute x1 x2 y1 y2 trials 0))

(estimate-integral 2 8 4 10 10000000)
