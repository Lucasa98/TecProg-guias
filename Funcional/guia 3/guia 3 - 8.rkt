;En la guia dice 7 pero es el 8
(define attach-at-end (lambda (x ls)
                        (if (null? ls)
                            (cons x ())                      ;caso base: ls vacia, se devuelve una lista solo con x
                            (let ((p (car ls)) (r (cdr ls)))
                              (cons p (attach-at-end x r))   ;caso recursivo: se agrega el primer elemento de ls al attach-at-end de x en la cola de ls
                              )
                            )
                        )
  )

(attach-at-end 'prueba '(esto es una))