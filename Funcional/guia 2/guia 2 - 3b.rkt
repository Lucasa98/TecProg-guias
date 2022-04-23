(let ((x '((a b) c)))
  (cons
   (let ((q (cdr x)))
     (car q))
   (let ((w (car x)))
     (cons
      (let ((e (cdr w)))
        (car e))
      (cons
       (let ((r (car w)))
         r)
       (cdr w)
       )
      )
    )
  )
)
