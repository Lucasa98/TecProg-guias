(define ls-length (lambda (ls)
                    (if (null? ls)
                        (display "lista vacia")           ;caso error
                        (let ((p (car ls)) (r (cdr ls)))
                          (if (null? r)
                              1                           ;paso base
                              (+ 1 (ls-length r))         ;paso recursivo
                              )
                          )
                        )
                    )
  )

(ls-length '(1 5 3 1 35 2))