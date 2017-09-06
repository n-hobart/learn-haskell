module GCJ where

import Data.Foldable

gcj :: IO () -> IO ()
gcj go = do
    n <- read <$> getLine
    for_ [(1::Int)..n] $ \i -> do
        putStr $ "Test #" ++ show i ++ ": "
        go

gcjLn :: IO () -> IO ()
gcjLn = gcj . ((putChar '\n') >>)
