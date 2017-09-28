module Print1 where

  printSecond :: IO ()
  printSecond = do
    putStrLn greeting

  main :: IO ()
  main = do
    putStrLn greeting
    printSecond

  greeting :: String
  greeting = "Yarrrr"
