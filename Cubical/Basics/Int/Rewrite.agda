{-# OPTIONS --cubical --rewriting #-}
module Cubical.Basics.Int.Rewrite where

open import Cubical.Core.Primitives
open import Cubical.Basics.Int

-- The following should be removed once we have ghcomp and no empty systems!
{-# BUILTIN REWRITE _≡_ #-}

hcompIntEmpty : (n : Int) → hcomp (λ _ → empty) n ≡ n
hcompIntEmpty n i = hfill (λ _ → empty) (inc n) (~ i)

{-# REWRITE hcompIntEmpty #-}
