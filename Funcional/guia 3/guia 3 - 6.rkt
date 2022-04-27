;en la guia dice ejercicio 5 pero es el 6, inentendible x3

(define concatenar (lambda (l1 l2)
                     (if (null? l1)
                         l2                               ;caso trivial: l1 vacia
                         (let ((p (car l1)) (r (cdr l1)))
                           (if (null? r)
                               (cons p l2)                ;caso base: l1 con un elemento
                               (cons p (concatenar r l2)) ;caso recursivo: concatenar el primer elemento de l1 con el resto+l2
                               )
                           )
                         )
                     )
  )

(concatenar '(1 3 5 7 9) '(2 4 6 8))