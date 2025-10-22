#lang typed/racket/base

(require "../../111.rkt" typed/rackunit)

(: b (Mutable-Box Real Real))
(define b (box 111))

(check-true (box? b))
(check-eqv? (unbox b) 111)
(set-box! b 0)
(check-eqv? (unbox b) 0)
