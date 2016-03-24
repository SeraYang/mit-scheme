(define (decrypt c) ;decrypt the code.
    (if (> 0 c) "Code should be greater than ZERO"
      (remainder (expt c 157) 2773)))

(define (encrypt m) ;encrypt the code.
  (if (> 0 m) "Input codes should be greater than ZERO"
    (remainder (expt m 17) 2773)))

(define (decrylist l) 
  (if (list? l)
    (if (= 0 (length l)) '()
                         (cons (decrypt (car l)) (decrylist (cdr l))))
    "Input is not a list"))

(define (encrylist l)
  (if (list? l)
    (if (= 0 (length l)) '()
                         (cons (encrypt (car l)) (encrylist (cdr l))))
    "Input is not a list"))

(define printasciis (lambda (l)
                      (begin (map (lambda (x) (display (ascii->char x))) l)
                             (display "\n"))))

(define secretlist '(2063 193 758 2227 1860 131 131 169 758 660 1528 1751 2227 660 1684 758 2227 660 169 1020
1239 758 207))

(printasciis (decrylist secretlist))
