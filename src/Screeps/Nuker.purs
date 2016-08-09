-- | Corresponds to the Screeps API [StructureNuker](http://support.screeps.com/hc/en-us/articles/208488255-StructureNuker)
module Screeps.Nuker where

import Control.Monad.Eff (Eff)

import Screeps.Constants (ReturnCode)
import Screeps.Effects (CMD)
import Screeps.Types (Nuker, RoomPosition)
import Screeps.FFI (runThisEffFn1, unsafeField)

energy :: Nuker -> Int
energy = unsafeField "energy"

energyCapacity :: Nuker -> Int
energyCapacity = unsafeField "energyCapacity"

ghodium :: Nuker -> Int
ghodium = unsafeField "ghodium"

ghodiumCapacity :: Nuker -> Int
ghodiumCapacity = unsafeField "ghodiumCapacity"

cooldown :: Nuker -> Int
cooldown = unsafeField "cooldown"

launchNuke :: forall e. Nuker -> RoomPosition -> Eff (cmd :: CMD | e) ReturnCode
launchNuke = runThisEffFn1 "launchNuke"