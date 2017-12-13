(load "tree-height.lisp")

(defun node-printLevelorderR (node crtLevel printLevel)
	(if (eq crtLevel printLevel)
		(if (first node) (print (first node)))
		(progn 
			(node-printLevelorderR (second node) (+ 1 crtLevel) printLevel)
			(node-printLevelorderR (third node) (+ 1 crtLevel) printLevel)
			)
		)
	)


(defun tree-printLevelOrder (node)
		(loop for printLevel from 0 to (tree-height node) do
				(node-printLevelorderR node 0 printLevel)
			)
	)

;(tree-printLevelOrder `(2 (1) (3)))
