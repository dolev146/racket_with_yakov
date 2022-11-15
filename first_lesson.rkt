
#|
f(x) =
if ( 0 <= x <= 5 || 7<= x <= 10) {
return 1 ;
}
else return 0 ;

if ( (0 <= x && x <= 5) || (7 <= x && x <= 10 ) ) return 1;
else return 0;
|#

(: func : Number -> Number )
(define (func x)(if (or (and (if (>= x 0)) (if (<= x 5))) (and (if (>= x 7)) (if (<= x 10)))) 1 0))


#lang pl

;;comment  fuck you you are gay

(+ 10 5) ; int will be fuck you comment

#|
fuck you comment
who say im gay yout are hay
|#


;; if else
(if (> 4 3) 55 50)

(define PI 3.14)


;; (: not : Bool -> Bool)
;; (define (not a)(if a #f #t)) ; not working need to check how to do function

(: not : Number -> Number)
(define (not a)(if a 1 0)) ; working need to check all types names

( : isNegative : Number -> Boolean)
(define (isNegative x) (if (< x 0) #t #f)) 

#|
f(x) =
if ( 0 <= x <= 5 || 7<= x <= 10) {
return 1 ;
}
else return 0 ;

if ( (0 <= x && x <= 5) || (7 <= x && x <= 10 ) ) return 1;
else return 0;
|#
(: func : Number -> Number )
(define (func x)(if (and (if (<= x 0)) () )   ))



(: func : Number -> Number)
(define (func x)(if (or (and (>= x 0) (<= x 5)) (and (>= x 7) (<= x 10) )) 1 0))

(test (func 6) => 0)
(test (func 6) => 0)


;; if else  condition
(define a 1)
(define b 1)
( cond
   [(eq? 'a 'b) 0]
   [(eq? 'a 'c) 1]
   [else 2])


(cond
  [(and #t #f) 1]
  [(or #t #f) 2]
  [else 3])


(cond
  [(not (and (not #t) (not (and #t #f)))) 1]
  [#t 2]
  [else 3])



;; recursion

(: fact : Natural -> Natural)
(define (fact n) (if (zero? n) 1 (* n (fact(- n 1)))))
(test (fact 4) => 24)

(: fib : Integer => Natural)
(define (fib n)
  (
   cond
    [(= n 0) 1]
    [(= n 1) 1]
    [(>= n 2) (+ (fib (- n 1))(fib (- n 2)))]
    [else 0]
    ))