(define distance2d (lambda (a b)
                      (let ((x1 (car a)) (y1 (cdr a)) (x2 (car b)) (y2 (cdr b)))
                        (let ((dx (- x1 x2)) (dy (- y1 y2)))
                          (let ((c1 (* dx dx)) (c2 (* dy dy)))
                            (sqrt (+ c1 c2))
                            )
                          )
                        )
                      )
  )

(define distancias (lambda (ls)
                     (if (null? ls)
                         (display "lista vacia")                            ;caso error: lista sin datos
                         (let ((p (car ls)) (r (cdr ls)))
                           (if (null? r)
                               ()                                           ;caso base: lista con un solo dato
                               (cons (distance2d p (car r)) (distancias r)) ;caso recursivo: (distancia entre el primero y el segundo) + (distncias del resto)
                               )
                           )
                         )
                     )
  )

(distancias '((1 . 1) (1 . 2) (2 . 2) (2 . 1) (1 . 1)))