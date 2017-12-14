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
  (if 
    (first tree) (+ 1 (size (second tree)) (size (third tree)))
    0
  ) 
)

<<<<<<< Updated upstream
(defun sizeCount(tree count)
   (cond ((first tree)
       (incf count)
       (setq count (sizeCount (second tree) count))
       (setq count (sizeCount (third tree) count))	
       )
   ) 
   count
)
=======
;(size `(1 (2 (3) (4))))
>>>>>>> Stashed changes
