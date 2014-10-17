#lang scheme
; Take the first element of a list.
; Usage: (getFirstElement (list [0-9]+)
(define (getFirstElement x)
  (car x))

; Take the last element of a list.
; Usage: (getLastElement (list [0-9]+)
(define (getLastElement x)
  (car (reverse x)))