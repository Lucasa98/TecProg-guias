;Ejercicio 9
(define distance2d (lambda (a b)
                     (let ((x1 (car a)) (x2 (car b)) (y1 (cdr a)) (y2 (cdr b))) ;nombres lindos (?)
                       (let ((dx (- x1 x2)) (dy (- y1 y2)))                     ;diferencias
                         (let ((c1 (* dx dx)) (c2 (* dy dy)))                   ;cuadrados
                           (sqrt (+ c1 c2))
                          )
                        )
                      )
                     )
  )

;Ejercicio 10 (en la guia dice 12 anda a saber por qué)
(define proximo (lambda (x l)
                  (if (null? l)
                      (display "Lista vacia")
                      (let ((d1 (distance2d x (car l))) (r (cdr l)))
                        (if (null? r)
                            d1
                            (let ((d2 (proximo x r)))
                              (if (< d1 d2)
                                  d1
                                  d2
                                  )
                              )
                            )
                        )
                      )
                 )
  )

(proximo '(0 . 0) '((1 . 0) (1 . 1) (2 . 2)))