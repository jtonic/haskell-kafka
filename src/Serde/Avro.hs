{-# LANGUAGE OverloadedStrings #-}

module Serde.Avro where


import Kafka.Avro
import Serde.Message
import Control.Monad.Trans.Except (runExceptT, ExceptT (ExceptT), withExceptT)

exampleMessage :: EventMessage
exampleMessage = EventMessage 1 "Hello" True 12345678

data AvroError =  EncError EncodeError | DecError DecodeError deriving (Show)

run :: IO ()
run = do
    sr <- schemaRegistry "http://localhost:8081"
    res <- runExceptT $ roundTrip sr
    case res of
        Left err -> print err
        Right msg -> print msg

roundTrip :: SchemaRegistry -> ExceptT AvroError IO EventMessage
roundTrip sr = do
    enc <- withExceptT EncError (encode' exampleMessage)
    withExceptT DecError (decode' enc)
    where
        encode' msg = ExceptT $ encode sr (Subject "hs-message-subject-value") exampleMessage
        decode' msg = ExceptT $ decode sr msg
