(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))


(define (make-rat n d)
  (let ((g ((if (< d 0) - +) (gcd (abs n)  (abs d)))))
    (cons (/ n g) (/ d g))))


(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x))
    x)


(print-rat (make-rat 8 64) )
(print-rat (make-rat -8 -64) )
(print-rat (make-rat 8 -64) )
(print-rat (make-rat -8 64) )

