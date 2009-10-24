{-# OPTIONS --universe-polymorphism #-}

module Issue204.Dependency where

data Level : Set where
  zero : Level
  suc  : Level → Level

{-# BUILTIN LEVEL     Level #-}
{-# BUILTIN LEVELZERO zero  #-}
{-# BUILTIN LEVELSUC  suc   #-}

record R (ℓ : Level) : Set (suc ℓ) where

data D (ℓ : Level) : Set (suc ℓ) where

module D {ℓ : Level} (d : D ℓ) where
