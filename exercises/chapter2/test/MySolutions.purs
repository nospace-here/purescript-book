module Test.MySolutions where

import Prelude

import Math (sqrt, pi, e)
import Global (readFloat)

diagonal w h = sqrt (w * w + h * h)

circleArea r = pi * r * r

addE s = readFloat s + e