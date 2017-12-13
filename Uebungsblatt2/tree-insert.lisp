(defun insert(baum val)
    (cond
		((null (first baum))
			(setq baum(list val nil nil))
		)
        ((> (first baum) val) 
             (setq baum (list (first baum) (insert (second baum) val) (third baum)))
        )
        ((< (first baum) val) 
             (setq baum (list (first baum) (second baum) (insert (third baum) val)))
		)
	)
	baum
)  

(defun readFile (filename)
    (with-open-file (stream filename :direction :input)
        (loop for line = (read stream nil 'eof)
              until(eql line 'eof)
              collect line
        )      
    )
)

(defun addAll(tree otherTree)
	(cond((first otherTree)
       (setq tree (insert tree (first otherTree)))
	   
	   (if(second otherTree)
			(setq tree (addAll tree (second otherTree)))
	   )
		(if(third otherTree)
			(setq tree (addAll tree (third otherTree)))
	   )	   
	   )
	)
	tree
)    

(defun addFile(tree fileName)
    (setq tree(addAll tree (readFile fileName)))
)
