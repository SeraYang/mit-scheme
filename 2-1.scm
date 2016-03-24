(define (lastelement m) 
	(if (list? m) 
		(if (= 0 (length m)) "error"
			(car (reverse m)))
		"Input is NOT a list"))
