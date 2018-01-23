(defun funkdef-1argeval (fktname op const var arg) 
	(funcall (setf (fdefinition fktname) #'(lambda (x) (+ x const))) arg))

(print (funkdef-1argeval `adder `+ 10 `zahl 5))

(print (adder 20))