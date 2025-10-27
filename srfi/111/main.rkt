#lang typed/racket/base/optional

(require "private/types.rkt")

(provide (all-from-out "private/types.rkt")
         box?)

(require/typed racket/mutability
  [(mutable-box? box?) (pred Mutable-BoxTop)])

(require/typed/provide racket/base
  [box (∀ (t) (→ t (Mutable-Box t t)))]
  [unbox (∀ (+t) (→ (Mutable-Box Nothing +t) +t))]
  [set-box! (∀ (-t) (→ (Mutable-Box -t Any) -t Void))])
