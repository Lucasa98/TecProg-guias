(define pi 3.14)

(define perimetro (lambda (r)
                    (* 2 pi r)
                    )
 )

(define area (lambda (r)
               (let ((sqr (* r r)))
                 (* pi sqr)
                 ))
  )

(define circlestuff (lambda (r)
                      (cons
                       (area r)
                       (cons (perimetro r) ()))
                      )
  )

(circlestuff 3)