; binary trees
(define (node x l r) ; x is data, 1 is left, r is right
  (lambda (s)
    (cond ((= s 0) x)
          ((= s 1) l)
          ((= s 2) r)
          (#t 'error))))

(define (data t) (t 0))
(define (left t) (t 1))
(define (right t) (t 2))

(define t1 (node 5 (node 3 '() '()) (node 8 (node 7 '() '()) '())))

(define (size t) (if (null? t) 0 (+ 1 (size (left t)) (size (right t)))))

(define (search x t) ; assuming a binary search tree
  (and (not (null? t))
       (or (= x (data t))
           (and (< x (data t)) (search x (left t)))
           (and (> x (data t)) (search x (right t))))))

(define (tproduct tree)
  ;(let ((product 1))
    (if (not (null? tree)) (* (data tree) 
                              (tproduct (left tree)) 
                              (tproduct (right tree)))
                            1))
;(define yang (node 1 (node 2 (node 3 (node 4 (node 5 '() '()) '()) '()) '()) (node 6 '() '())))
