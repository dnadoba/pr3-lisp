(defun contains (baum val)
    (cond
        ((null baum)
             'nil
         )
        ((eql (first baum) val) 'val)
        ((> (first baum) val) 
             (contains (second baum) val)
         )
        ((< (first baum) val) 
             (contains (third baum) val)
         )
    )
)    
