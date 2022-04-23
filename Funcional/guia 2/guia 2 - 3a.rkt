(let ((x 'a) (y 'b))
 (list
  (let ((c 'c))
    (cons c y))
  (let ((d 'd))
    (cons x d))
 )
)
