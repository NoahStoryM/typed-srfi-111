#lang typed/racket/base

;; TODO (Mutable-Boxof t) → (Mutable-Boxof t t)
(struct (-t +t) Mutable-Boxof ([_ : (Parameter -t +t)]))
#;(struct (a ...) _ ([_ : (Parameter a ...)]) #:type-name Mutable-Boxof) ; not work well
(define-type (Mutable-Box -t +t) (Mutable-Boxof -t +t)) ; avoid printing #(struct:Mutable-Boxof ...)
(provide Mutable-Box (rename-out [Mutable-Box Mutable-Boxof]))

(define-type Mutable-BoxTop (Mutable-Box Nothing Any))
(define-type Mutable-BoxBot (Mutable-Box Any Nothing))
(provide Mutable-BoxTop Mutable-BoxBot)
