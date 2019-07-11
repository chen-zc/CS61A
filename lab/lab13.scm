; Q1
(define (compose-all funcs)
  'YOUR-CODE-HERE
  (lambda (x)
  (if (null? funcs)
  x
  ((compose-all (cdr funcs)) ((car funcs) x) )))
)

; Q2
(define (tail-replicate x n)
  'YOUR-CODE-HERE
  (define (helper k lst)
  (if (= k n)
  lst
  (helper (+ k 1) (cons x lst))
  ))
 (helper 0 nil)
  )

)
