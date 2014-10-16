#lang scheme

; Variables passed around in program:
; n = numerator
; d = denominator
; f = flip (go from ascending to descending the list)
; c = currentTerm
; m = maxTerm

(define (getterm n)
  (if (< n 0) '"Input must be greater than 0"
        (descend 1 1 1 1 n)))

(define (descend n d f c m)
  (if (= c m)
      (list 'Term m 'is n '/ d)
      (begin
        (if (and (= n 1) (= f 1))
            (descend n (+ d 1) 0 (+ c 1) m)
            (begin
              (if (not (= d 2))
                  (descend (+ n 1) (- d 1) 0 (+ c 1) m)
                  (ascend (+ n 1) (- d 1) 1 (+ c 1) m)))))))

(define (ascend n d f c m)
  (if (= c m) 
      (list 'Term m 'is n '/ d)
      (begin
        (if (and (= d 1) (= f 1))
            (ascend (+ n 1) d 0 (+ c 1) m)
            (if (= n 2)
                (descend (- n 1) (+ d 1) 1 (+ c 1) m)
                (ascend (- n 1) (+ d 1) 0 (+ c 1) m))))))