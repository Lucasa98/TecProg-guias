(define-struct punto (x y))

(define distancia2d (lambda (a b)
                      (let ((x1 (punto-x a)) (y1 (punto-y a)) (x2 (punto-x b)) (y2 (punto-y b)))
                        (let ((c1 (- x1 x2)) (c2 (- y1 y2)))
                          (sqrt (+ (* c1 c1) (* c2 c2)))
                        )
                      )
                      )
  )

(distancia2d (punto 1 1) (punto 2 2))