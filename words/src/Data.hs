module Data ( grid
            , languages )
              where

grid = [ "__C________R___"
       , "__SI________U__"
       , "__HASKELL____B_"
       , "__A__A_____S__Y"
       , "__R___B___C____"
       , "__PHP____H_____"
       , "____S_LREP_____"
       , "____I__M_Y__L__"
       , "____L_E__T_O___"
       , "_________HB____"
       , "_________O_____"
       , "________CN_____"
       ]

languages = [ "BASIC"
            , "COBOL"
            , "CSHARP"
            , "HASKELL"
            , "LISP"
            , "PERL"
            , "PHP"
            , "PYTHON"
            , "RUBY"
            , "SCHEME"
            ]

coords = do
    row <- [0..7]
    return $ do
        col <- [0..7]
        return (row, col)

cols = repeat [0..]
rows = map repeat [0..]

repeat8 = take 8 . repeat
cols8 = repeat8 [0..7]
rows8 = map repeat8 [0..7]

zipOverGrid = zipWith zip
grid8 = zipOverGrid rows8 cols8