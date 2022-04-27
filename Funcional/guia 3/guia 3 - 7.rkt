;en la guia dice ejercicio 6 pero es el 7, inprehensible x10

(define primer-num (lambda (ls)
                     (if (null? ls)
                         null                            ;caso base: ls vacia
                         (let ((p (car ls)) (r (cdr ls)))
                           (if (number? p)
                               p                         ;caso 1: el primer elemento es un numero
                               (primer-num r)            ;caso 2: el primer elemento no es un numero (recursividad sobre el resto)
                               )
                           )
                         )
                     )
  )

(primer-num '((1 . 2) 'a (b) (5) 6 7 'a 9))