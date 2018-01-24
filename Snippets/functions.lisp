(defun call (func value1 value2) 
	(funcall func value1 value2))

(print (call `+ 2 5))

(defun call2 (func values) 
	(apply func values))

(print (call2 `+ `(2 5)))

(defun call3 (func &rest values) 
	(apply func values))

(print (call3 `+ 2 9))