module mood where

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood

changeMood = IO ()
  changeMood Mood = Woot
  changeMood    _ = Blah
