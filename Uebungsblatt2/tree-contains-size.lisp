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

(defun size(tree)
   (sizeCount tree 0) 
)

(defun sizeCount(tree count)
   (if (first tree)
       (incf count)
           
   )  (if (first tree)
       (setq count (sizeCount (second tree) count))
           
   ) (if (first tree)
       (setq count (sizeCount (third tree) count))
   ) 
   
   (first(list count))
)
