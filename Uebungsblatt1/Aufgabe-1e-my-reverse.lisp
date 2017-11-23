(defun my-reverse-recursive (reversed remaining)
	(cond 
		((null remaining) reversed)
		(T (my-reverse-recursive (append reversed (last remaining)) (butlast remaining)))	
	)
)
(defun my-reverse (a)
	(my-reverse-recursive '() a)
)

(my-reverse `(1 2 3 4))
(my-reverse `(1 2 (3 4) 5))