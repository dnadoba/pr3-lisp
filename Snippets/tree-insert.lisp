(defun tree-insert (tree value)
	(cond 
		((null tree) (list value)) ;insert value
		((eql (first tree) value) tree) ;value arleady in tree
		((> (first tree) value) ;smaller - go into left subtree
			(list 
				(first tree) 
				(tree-insert (second tree) value)
				(third tree)))
		((< (first tree) value) ;greater - go into right subtree
			(list 
				(first tree) 
				(second tree) 
				(tree-insert (third tree) value)))))

(print (tree-insert (tree-insert `(3 (1 nil (2)) (4 nil (5))) 6) 0))

(print (tree-insert (tree-insert (tree-insert (tree-insert (tree-insert nil 8) 5) 9) 5) 2))