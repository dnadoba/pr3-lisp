(defun funkdef-1arg (fktname op const var) 
	(list `defun fktname (list var)(list op var const)))

(print (funkdef-1arg 'add1 '+ 1 'zahl))