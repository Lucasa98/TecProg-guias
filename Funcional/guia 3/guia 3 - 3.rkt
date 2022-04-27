(define count (lambda (x ls)
                (if (null? ls)
                    0                                ;caso 1: lista vacia
                    (let ((p (car ls)) (r (cdr ls)))
                      (if (= x p)
                          (+ 1 (count 1 r))          ;caso 2: primer elemento coincidente (recursividad)
                          (count 1 r)                ;caso 3: primer elemento no coincidente (recursividad)
                          )
                      )
                    )
                )
  )

(count 1 '(1 2 3 56 1 2 6 3 1 5))