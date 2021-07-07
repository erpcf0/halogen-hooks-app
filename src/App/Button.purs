module App.Button where

import Prelude

import Data.Tuple.Nested ((/\))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.Hooks as Hooks

component :: forall q i o m. H.Component q i o m
component  = Hooks.component \_ _ -> Hooks.do
  count /\ countId <- Hooks.useState 0

  Hooks.pure do
    HH.button
      [ HE.onClick \_ -> Hooks.modify_ countId (_ + 1) ]
      [ HH.text $ show count ]