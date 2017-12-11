;binärbaum
;		5
;	     2      6
;	 1      3
;		    4
(setq baum '( 5 ( 2 (1 nil nil) (3 nil (4 nil nil) )) (6 nil nil)))

;returns the smallest element of the tree
(defun finde-kleinstes (baum)
  (cond 
    ((second baum) ;left subtree exists
     (finde-kleinstes (second baum)))
    (T ;no left subtree
     (first baum)))
)

;returns a new subtree wihtout the smallest element
(defun loesche-kleinstes (baum)
  (cond
    ((second baum) ;left subtree exists
     (append (list (first baum)) 
	     ;dont insert a (nil nil nil) subtree
	     (cond (eql (list (loesche-kleinstes (second baum))) '(nil nil nil))
		   (list (nil))
		   (T (list (loesche-kleinstes (second baum)))))
	     (list (third baum))))
    (T ;there is not left subtree
     (third baum)))
)

(defun loeschen(baum element)
  (cond
    ;the first entry is the value to remove
    ((eql (first baum) element) 
     (append (list (finde-kleinstes (third baum))) ;replace this element with smallest number from right subtree
	     (list (second baum)) ;left subtree is the same
	     (list (loesche-kleinstes (third baum))))) ;delete smallest element from right subtree
   
    ;the first entry is smaller than the value 
    ((< (first baum) element) 
     (cond ((null (third baum)) 
	    (nil)) ;no subtree for higher number
	   (T ;return the tree with the deleted element in the right subtree
	    (append (list (first baum))
		    (list (second baum))
		    (list (loeschen (third baum) element))))))
    
    ;the first entry is greater than the value
    ((> (first baum) element) 
     (cond ((null (second baum)) 
	    (nil)) ;no subtree for smaller number
	   (T ;return the tree with the deleted element in the left subtree
	    (append (list (first baum))
		    (list (loeschen (second baum) element))
		    (list (third baum))))))
    )
)

(print 'Loesche-5)
(loeschen baum 5)
