(defun neues-vorletztes (list element)
    (append
        (butlast list)
        (list element)
        (last list)
    )
)

(neues-vorletztes `(1 2 3 5) 4)
