#lang scheme
; Remove first element
(define (removeFirstElement x)
  (list (cdr x)))
      
; Remove last element
(define (removeLastElement x)
  (if (null? (cdr x))
      '()
      (cons (car x)(removeLastElement(cdr x)))))
 
; Remove n-th element
; ALGORITHM:
; Start with the counter (y) being the zero-based list element we want to remove.
; If y > 0, then we will go ahead and add the current element to the list we want to return.
; Otherwise, we return the new list.
(define (removeNthElement x y)
  (if (= y 0)
  (cdr x)
  (append (list (car x)) (removeNthElement (cdr x) (- y 1)))))    