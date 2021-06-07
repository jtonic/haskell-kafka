module MessageApp where

import MessageProducer (runProducerExample)
import MessageConsumer (runConsumerExample)
run :: IO ()
run = do
  putStrLn "Running producer example..."
  runProducerExample

  putStrLn "Running consumer example..."
  runConsumerExample

  putStrLn "Ok."
