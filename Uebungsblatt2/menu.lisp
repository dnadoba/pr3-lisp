(load "tree-delete.lisp")
(load "tree-height.lisp")
(load "tree-printLevelorder.lisp")
(load "tree-insert.lisp")
(load "tree-contains-size.lisp")
 

;es wird ein baum benutzt, bei allen methoden der gleiche
;baumA und baumB

(setq baumA '())
(setq baumB '(17 nil nil))

"MENU:
Angebotene Funktionen:
1:tree-printLevelorder(tree)
2:insert(tree val)
3:addAll(tree otherTree)
4:addFile(tree fileName)
5:tree-height(tree)
6:contains(tree val)
7:size(tree)"




(setq baumA(insert baumA 3))
(setq baumA(insert baumA 8))
(setq baumA(insert baumA 7))
(setq baumA(insert baumA 1))
(setq baumA(insert baumA 2))
(setq baumA(insert baumA 22))

(setq baumB (addAll baumB baumA))

;(addFile baumB "test.txt")

"Levelorder Baum A:"
(tree-printLevelorder baumA)
"Levelorder Baum B:"
(tree-printLevelorder baumB)
"Hoehe Baum A:"
(tree-height baumA)

(if (contains baumA 7)
	"7 ist in Baum A"
	"7 ist nicht in Baum A"
)
(if (contains baumB 100)
	"100 ist in Baum B"
	"100 ist nicht in Baum B"
)

"Size Baum B:"
(size baumA)
