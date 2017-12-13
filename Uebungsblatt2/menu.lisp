(load "tree-delete.lisp")
(load "tree-height.lisp")
(load "tree-printLevelorder.lisp")
(load "tree-insert.lisp")
(load "tree-contains-size.lisp")
 
(defun menu ()
(setq in -1)

(setq tree '())

(loop while (not (= in 0)) do
 
 (print " 1: Insert")
 (print " 2: Datei einfuegen")
 (print " 3: Ist Vorhanden?")
 (print " 4: Groesse")
 (print " 5: Hoehe")
 (print " 6: Max")
 (print " 7: Min")
 (print " 8: Delete")
 (print " 9: AddAll")
 (print "10: PrintLevelorder")
 (print " 0: Stop")
 (terpri)
 (print "Ihre Eingabe: ")
 (setq s (read))
   (case s
	 (1 (print "Insert") (print (setq tree (insert tree (read)))))
	 (2 (print "Datei einfuegen") (print (setq tree (addfile tree (read)))))
	 (3 (print "Ist vorhanden") (print (contains tree (read) )))
	 (4 (print "Groesse") (print (size tree)))
	 (5 (print "Hoehe") (print(height tree)))
	 (6 (print "Max") (print (finde-groesstes tree)))
     (7 (print "Min") (print (finde-kleinstes tree)))
	 (8 (print "Delete") (print(setq tree (entfernen tree (read) ))))
	 (9 (print "AddAll") (print (setq tree (addAll tree (read)))))
	 (10 (print "PrintLevelorder") (printLevelorder tree))
     (0 (print "Beendet") (setq in 0)))))


(menu)
