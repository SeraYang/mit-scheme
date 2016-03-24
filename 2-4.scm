(define (mapfun F L)
  (if (null? L) L (cons (F (car L)) (mapfun F (cdr L)))))
; (mapfun (lambda (x) (+ x 1)) '(1 2 3 4)) returns '(2 3 4 5)
;
; fold operator f over l, where f has identity id
(define (fold F l id)
  (if (null? l) id
    (F (car l) (fold F (cdr l) id))))

; usage;
(fold (lambda (x y) (+ x y)) '(2 4 1 5) 0) ; returns 12, the sum of the list

; FYI: here's the fold function in C, adopted to zero‐terminated vectors:
; int fold( int (*f)(int,int), int* l, int id)
; {
;  if (!l) return id; else return *f(l[0], fold(f,++l,id));
; }
; a similar function to fold is "reduce"
; f is assumed to be a binary function, M is assumed non‐empty.
; unlike fold, it is tail‐recursive:
(define (reduce f M)
(if (null? (cdr M)) (car M)
(reduce f (cons (f (car M) (cadr M)) (cddr M)))))

(define (howmany T tree)
  (if (null? tree) 0
    (if (T (data tree)) (+ 1 (howmany T (left tree)) (howmany T (right tree)))
                        0)))
