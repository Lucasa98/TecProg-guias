;en la guia aparece como 2, pero en realidad es el 4, inexplicable
(define subst (lambda (a b ls)
                (if (null? ls)
                    ()                               ;caso base: lista vacia
                    (let ((p (car ls)) (r (cdr ls)))
                      (if (eqv? a p)
                          (cons b (subst a b r))     ;caso 1: primer elemento coincidente, se reemplaza (recursividad sobre el resto)
                          (cons p (subst a b r))     ;caso 2: primer elemento no coincidente, no se hace nada (recursividad sobre el resto)
                          )
                      )
                    )
                )
  )

(subst 'c 'k '(c o c o n u t))