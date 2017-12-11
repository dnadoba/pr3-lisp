(defun tree-height (node) 
	(if (not(first node)) 
		0 ; node has no value
		(max 
			; left node
			(+ 1 (tree-height (second node))) 
			; right node
			(+ 1 (tree-height (third node)))
		)
	)
)

; (print "height should be 0:")
; (tree-height `())

; (print "height should be 1:")
; (tree-height `(1))

; (print "height should be 2:")
; (tree-height `(2 (1)))

; (print "height should be 2:")
; (tree-height `(2 (1) (3)))

; (print "height should be 3:")
; (tree-height `(3 (1 (2)) (4 (5))))
; (print "height should be 3:")
; (tree-height `(3 (1 (2)) (4 (5))))

