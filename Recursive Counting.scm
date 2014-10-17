#lang scheme
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