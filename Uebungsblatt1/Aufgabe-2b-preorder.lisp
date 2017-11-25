(setf example (list 5 (list 3 (list 2 (list 1 () ()) ()) (list 4 () ())) (list 8 (list 6 () (list 7 () ())) (list 9 () (list 10 () ())))))

(defun postorder(binaryTree)
  (append 
    (list (first binaryTree))
    (if (null (first(cadr binaryTree)))
        ()
        (postorder(cadr binaryTree))
    )   
    (if (null (first(last binaryTree)))
        ()
        (postorder(first(last binaryTree)))
    ) 
   )
)

(postorder example)
