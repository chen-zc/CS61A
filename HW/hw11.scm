(define (find s predicate)
  'YOUR-CODE-HERE
  (cond
  ((null? s) #f)
   ((predicate (car s)) (car s))
   (else (find (cdr-stream s) predicate))
      )
)

(define (scale-stream s k)
  'YOUR-CODE-HERE
  (if (null? s) s
  (cons-stream (* k (car s)) (scale-stream (cdr-stream s) k)))
)

(define (has-cycle s)
  'YOUR-CODE-HERE
  (define (cycle-tracker so-far cur)
  (cond
  ((bull? cur) #f)
  ((contains so-far cur) #t)
  (else (cycle-tracker (cons cur so-far)(cdr-stream cur))))
  (cycle-tracker nil s)
  )
  (define (contains lst s)
  (cond
  ((null? lst) #f)
  ((eq? s (car lst) #t)
  (else (contains (cdr lst) s)))))
)
(define (has-cycle-constant s)
  'YOUR-CODE-HERE
)
