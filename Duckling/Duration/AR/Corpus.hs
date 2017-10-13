-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.Duration.AR.Corpus
  ( corpus ) where

import Prelude
import Data.String

import Duckling.Duration.Types
import Duckling.Testing.Types
import Duckling.TimeGrain.Types (Grain(..))

corpus :: Corpus
corpus = (testContext, allExamples)

allExamples :: [Example]
allExamples = concat
  [ examples (DurationData 1 Second)
             [ "ثانية"
             , "لحظة"
             , "لحظة واحدة"
             ]
  , examples (DurationData 2 Minute)
             [ "دقيقتان"
             , "دقيقتين"
             ]
  , examples (DurationData 5 Hour)
             [ "خمسة ساعات"
             ]
  , examples (DurationData 30 Day)
             [ "30 يوم"
             ]
  , examples (DurationData 1 Week)
             [ "اسبوع"
             ]
  , examples (DurationData 7 Week)
             [ "سبع اسابيع"
             ]
  , examples (DurationData 1 Month)
             [ "شهر"
             ]
  , examples (DurationData 2 Year)
             [ "سنتين"
             , "سنتان"
             , "عامين"
             , "عامان"
             ]
  ]
