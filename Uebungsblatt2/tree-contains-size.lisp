(defun contains (baum val)
    (cond
        ((null baum)
             nil
         )
        ((eql (first baum) val) T)
        ((> (first baum) val) 
             (contains (second baum) val)
         )
        ((< (first baum) val) 
             (contains (third baum) val)
         )
    )
)    

(defun size(tree)
   (sizeCount tree 0) 
)

(defun sizeCount(tree count)
   (cond ((first tree)
       (incf count)
       (setq count (sizeCount (second tree) count))
       (setq count (sizeCount (third tree) count))	
       )
   ) 
   (first(list count))
)
