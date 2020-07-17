data Compass = North | East | South | West
 deriving (Eq, Ord, Enum, Show)

data Expression = Number Int
  | Add Expression Expression
  | Subtract Expression Expression
  deriving (Eq, Ord, Show)
