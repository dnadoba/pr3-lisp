fswatch ./**.lisp | xargs -I{} clisp -q {}
