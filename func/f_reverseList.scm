;;;;;;; Below is for reversing a list ;;;;;;;;;;
(define rev 
  (lambda (l) (if (list? l) 
				(if (null? l) '()
				  (append (rev (cdr l))
						(cons (car l) '())))
				"Not a List~~~")))
