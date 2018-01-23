(defun vorne-einfuegen (el1 el2 elements)
	(append (list (list el1 el2)) elements))

(print (vorne-einfuegen 'a 'b '((c d) (e f))))

