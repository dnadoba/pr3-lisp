(defun hinten-einfuegen (el1 el2 elements)
	(append elements (list (list el1 el2))))

(print (hinten-einfuegen 'a 'b '((c d) (e f))))