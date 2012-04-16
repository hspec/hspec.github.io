{-# LANGUAGE OverloadedStrings #-}
import Control.Arrow ((>>>))

import Hakyll

main :: IO ()
main = hakyll $ do
  match "template/*" $ do
    compile templateCompiler

  match "*.markdown" $ do
    route $ setExtension "html"
    compile $ pageCompiler
        >>> applyTemplateCompiler "template/default.html"
        >>> relativizeUrlsCompiler
