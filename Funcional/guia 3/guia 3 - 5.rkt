;en la guia aparece como ejercicio 3, pero es el 5, inexplicable again

;La logica es la siguiente:
;Cuando se llegue al paso base (lista vacia), se devolvera una lista vacia
;En cualquier otro caso, se agrupara el primer elemento en la lista de grupos generada a partir de la cola de la lista
;Para agrupar un elemento en una lista de grupos, se utiliza agrupar-aux

;Se considera que ls es una lista de elementos iguales
(define pertenece (lambda (x ls)
                    (if (null? ls)
                        false                 ;caso base: lista vacia. Devuelve falso.
                        (if (eqv? x (car ls))
                            true              ;caso 1: contiene a x.
                            false             ;caso 2: no contiene a x.
                            )
                        )
                    )
  )

(define agrupar-aux (lambda (x ls)
                      (if (null? ls)
                          (cons (cons x ()) ls)            ;caso base: lista vacia. Devuelve una lista con una lista con x
                          (let ((p (car ls)) (r (cdr ls)))
                            (if (pertenece x p)
                                (cons (cons x p) r)        ;caso 1: la primer lista contiene x's. Agrega otra x
                                (cons p (agrupar-aux x r)) ;caso 2: la primer lista no contiene x's (recursividad)
                                )
                            )
                          )
                      )
  )

(define agrupar (lambda (ls)
                  (if (null? ls)
                      ()                               ;caso base: lista vacia
                      (let ((p (car ls)) (r (cdr ls)))
                        (agrupar-aux p (agrupar r))    ;caso recursivo: agregar el primer elemento al resto ya agrupados
                        )
                      )
                  )
  )

(agrupar '(A A B C A B A D C))