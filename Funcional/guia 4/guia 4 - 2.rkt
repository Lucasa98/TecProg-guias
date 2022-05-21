(define-struct punto (x y z))

(define suma (lambda (a b)
               (punto (+ (punto-x a) (punto-x b))
                      (+ (punto-y a) (punto-y b))
                      (+ (punto-z a) (punto-z b))
                      )
               )
  )

(define sum-total (lambda (ls)
                    (if (null? ls)
                        (punto 0 0 0)
                        (let ((p (car ls)) (r (cdr ls)))
                          (suma p (sum-total r))
                          )
                        )
                    )
  )

(define size (lambda (ls)
               (if (null? ls)
                   0
                   (+ 1 (size (cdr ls)))
                   )
               )
  )

(define centro-grav (lambda (ls)
                      (if (null? ls)
                          (display "lista vacia")
                          (let ((sum (sum-total ls)) (cant (size ls)))
                            (punto (/ (punto-x sum) cant) (/ (punto-y sum) cant) (/ (punto-z sum) cant))
                            )
                          )
                      )
  )

(punto-x (centro-grav (cons (punto 1 1 1) (cons (punto 2 2 2) ()))))
(punto-y (centro-grav (cons (punto 1 1 1) (cons (punto 2 2 2) ()))))
(punto-z (centro-grav (cons (punto 1 1 1) (cons (punto 2 2 2) ()))))