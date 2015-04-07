{-# LANGUAGE CPP #-}
module Conversion.CaseInsensitive where

import Conversion
import Data.CaseInsensitive


instance Conversion (CI a) a where
  {-# INLINE convert #-}
  convert = original

instance FoldCase a => Conversion a (CI a) where
  {-# INLINE convert #-}
  convert = mk
