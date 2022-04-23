;operator
;   ^ primer argumento (nombre)
;   |     ^     segundo argumento (definicion)
;   |     |        ^
;   |     |        |
(define length (lambda (x)
            (if (eqv? x ())
                0                        ;Caso tribial de lista vacia
                (let ((p (car x)) (c (cdr x)))
                  (if (eqv? c ())        ;Si la cola es una lista vacia
                      1                  ;Tiene un elemento
                      (+ 1 (length c))   ;Si no, tiene 1 + el largo de la cola
                   )
                 )
             )
           )
)

(define shorter (lambda (x y)
                  (let ((a (length x)) (b (length y)))
                    (if (< a b)
                        x          ;si x es mas corto
                        (if (< b a)
                            y      ;si y es mas corto
                            x      ;si son iguales
                         )
                      )
                    ))
  )

(length '(a b c d))
(shorter '(a b) '(c d e))
(shorter '(a b) '(c d))
(shorter '(a b) '(c))