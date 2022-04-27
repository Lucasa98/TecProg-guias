(define factorial (lambda (x)
                    (if (< x 0)
                        (display "numero no valido")   ;caso error
                        (if (= x 0)
                            1                          ;paso base
                            (* x (factorial (- x 1)))  ;paso recursivo
                            )
                        )
                    )
  )

(factorial 4)