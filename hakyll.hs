{-# LANGUAGE OverloadedStrings, TupleSections #-}

import Data.Binary (Binary)
import Data.Typeable (Typeable)
import Control.Arrow

import Hakyll

main :: IO ()
main = hakyll $ do
  match "template/*" $ do
    compile templateCompiler

  match "*.markdown" $ do
    route $ setExtension "html"
    compile $ pageCompiler_
        >>> applyTemplateCompiler "template/default.html"
        >>> relativizeUrlsCompiler

  match "example/**.hs" $ do
    compile getResourceString

-- |
-- A customized version of pageCompiler, that sets source files to
-- corresponding fields, so that they can be included in pages.
pageCompiler_ = pageCompilerWithFields defaultHakyllParserState defaultHakyllWriterOptions id (
        includeFile "MathSpec"  "example/MathSpec.hs"
    >>> includeFile "Math0"     "example/step2/Math.hs"
    >>> includeFile "Math"      "example/step4/Math.hs"
    )
  where
    includeFile key file = arr (, ()) >>> setFieldA key (require_ file >>> markStringLiterals >>> markComments >>> arr pre)

    sed = unixFilter "sed"

    markComments       = sed ["s/^--.*/<span class=\"hs-comment\">\\0<\\/span>/"]
    markStringLiterals = sed ["s/\"[^\"]*\"/<span class=\"hspec-lit\">\\0<\\/span>/g"]

    pre code = "<pre>" ++ code ++ "</pre>"
