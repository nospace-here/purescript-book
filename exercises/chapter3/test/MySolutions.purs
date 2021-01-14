module Test.MySolutions where

import Prelude

-- Note to reader: Add your solutions to this file

findEntryByStreet :: String -> AddressBook -> Maybe Entry
findEntryByStreet street = head <<< filter filterEntry
  where
  filterEntry :: Entry -> Boolean
  filterEntry entry = entry.address.street == street

isInBook :: String -> String -> AddressBook -> Boolean
isInBook firstName lastName = not <<< null <<< filter filterEntry
  where
  filterEntry :: Entry -> Boolean
  filterEntry entry = entry.firstName == firstName && entry.lastName == lastName

removeDuplicates :: AddressBook -> AddressBook
removeDuplicates = nubBy filterEntry
  where
  filterEntry :: Entry -> Entry -> Boolean
  filterEntry e1 e2 = e1.firstName == e2.firstName
    && e1.lastName == e2.lastName