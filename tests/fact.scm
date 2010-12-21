#! ./clispy
(define area (lambda (r) (* 3.141592653 (* r r))))
(display (area 3))
(newline)
(define fact (lambda (n) (if (<= n 1) 1 (* n (fact (- n 1))))))
(display (fact 15))
(newline)
(define first car)
(define rest cdr)
(define count (lambda (item L) (if L (+ (equal? item (first L)) (count item (rest L))) 0)))
(display (count 0 (list 0 1 2 3 0 0)))
(newline)
(display (count (quote the) (quote (the more the merrier the bigger the better))))
(newline)
(define make-account (lambda (balance) (lambda (amt)  (begin (display balance) (newline) (set!  balance (+ balance amt)) balance))))
(define a1 (make-account 100))
(display (a1 -20))
(newline)
