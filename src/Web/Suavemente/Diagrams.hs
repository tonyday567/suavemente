{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}

module Web.Suavemente.Diagrams where

import           Diagrams.Backend.SVG
import qualified Diagrams.Prelude as D
import           Graphics.Svg.Core (renderBS)
import           Text.Blaze (Markup, unsafeLazyByteString)


sendDiagram :: D.Diagram B -> Markup
sendDiagram
  = unsafeLazyByteString
  . renderBS
  . D.renderDia SVG
                (SVGOptions (D.mkWidth 250) Nothing "" [] True)

