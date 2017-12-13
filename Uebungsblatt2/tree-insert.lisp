(defun insert(baum val)
    (cond
		((null (first baum))(list val nil nil))
        ((> (first baum) val)(list (first baum) (insert (second baum) val) (third baum)))
        ((< (first baum) val)(list (first baum) (second baum) (insert (third baum) val)))
	)
)  

(defun readFile (filename)
    (with-open-file (stream filename :direction :input)
        (loop for line = (read stream nil 'eof)
              until(eql line 'eof)
              collect line
        )      
    )
)

(defun addfile (tree fileName)
    (setq tree (insertAll tree (readFile fileName)))
	tree
)

(defun insertAll(tree values)
	(cond 
		((not (eql (first values) nil))
			(setq tree (insert tree (first values)))
			(setq tree (insertAll tree (rest values)))
		)
	)
	tree
)

(defun addAll(tree otherTree)
	(cond 
		((not(eql(first otherTree)nil))
			(setq tree (insert tree (first otherTree)))
			(if(second otherTree)(setq tree (addAll tree (second otherTree))))
			(if(third otherTree)(setq tree (addAll tree (third otherTree))))	   
		)
	)
	tree
)    

