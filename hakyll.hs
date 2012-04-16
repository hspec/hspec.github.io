{-# LANGUAGE OverloadedStrings #-}
import Control.Arrow ((>>>))

import Hakyll

main :: IO ()
main = hakyll $ do
  match "images/*" $ do
    route idRoute
    compile copyFileCompiler

  match "css/*" $ do
    route idRoute
    compile compressCssCompiler

  match "template/*" $ do
    compile templateCompiler

  match "*.markdown" $ do
    route $ setExtension "html"
    compile $ pageCompiler
        >>> applyTemplateCompiler "template/default.html"
        >>> relativizeUrlsCompiler
