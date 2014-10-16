#lang scheme
; Take the first element of a list.
; Usage: (getFirstElement (list [0-9]+)
(define (getFirstElement x)
  (car x))

; Take the last element of a list.
; Usage: (getLastElement (list [0-9]+)
(define (getLastElement x)
  (car (reverse x)))

; Recursively count to 10 and print intermediate results.
; Usage: (countUpToTen [0-9]{1})
(define (countUpToTen x)
  (display x)
  (newline)
  (if (< x 10)
      (countUpToTen (+ x 1))
      (display "Done")))

; Recursively count up by n.
; Usage: (countUpByN initialNumber incrementBy maxNumber)
(define (countUpByN x y z)
  (display x)
  (newline)
  (if (< (+ x y) z)
      (countUpByN (+ x y) y z)
      (display "Done")))