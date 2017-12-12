(defun insert (baum val)
    (cond
        ((null baum)
             (setq baum (list val nil nil))
         )
        ((> (first baum) val) 
             (insert (second baum) val)
         )
        ((< (first baum) val) 
             (insert (third baum) val)
         )
    )
)    
   
