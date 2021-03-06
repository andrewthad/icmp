module Network.Icmp.Ping
  ( -- * Functions
    S.host
  , H.hosts
  , H.range
  , M.multihosts
  , M.multirange
    -- * Exceptions
  , IcmpException(..)
  ) where

-- TODO: Figure out a more graceful way to fail when someone tries
-- to ping the broadcast address. Can this be distinguished from the
-- error message that we get when the sysctl thing is not set?
--
-- I think this has been solved.

import qualified Network.Icmp.Ping.Single as S
import qualified Network.Icmp.Ping.Hosts as H
import qualified Network.Icmp.Ping.Multihosts as M
import Network.Icmp.Common (IcmpException(..))
