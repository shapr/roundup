{-# LANGUAGE TemplateHaskell #-}

module Main where

import Hedgehog
import Hedgehog.Main
import Roundup

prop_test :: Property
prop_test = property $ do
  doRoundup === "Roundup"

main :: IO ()
main = defaultMain [checkParallel $$(discover)]
