(defun paare (elements) 
	(list 
		(list (first elements) (second elements)) 
		(list (third elements) (fourth elements))))

(print (paare `(1 2 3 4)))