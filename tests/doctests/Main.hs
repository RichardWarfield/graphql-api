module Main (main) where

import Protolude

import Test.DocTest

main :: IO ()
main = doctest $ ["-isrc"] <> options <> files
  where
    options = map ("-X" <>) extensions
    -- These must match the extensions in package.yaml.
    extensions = [ "NoImplicitPrelude"
                 , "OverloadedStrings"
                 , "RecordWildCards"
                 , "TypeApplications"
                 , "DataKinds"
                 ]
    -- library code
    files = [ "src/" ]
