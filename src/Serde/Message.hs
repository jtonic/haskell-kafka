{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}

module Serde.Message
( EventMessage(..)
, schema'EventMessage
) where

import Data.Avro
import Data.Avro.Deriving

deriveAvroFromByteString [r|
{
  "type": "record",
  "name": "EventMessage",
  "namespace": "ro.jtonic.hs.avro.message",
  "fields": [
    { "name": "id", "type": "long" },
    { "name": "name", "type": "string" },
    { "name": "is_active", "type": "boolean" },
    { "name": "timestamp", "type": "long" }
  ]
}
|]
