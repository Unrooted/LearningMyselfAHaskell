addBrackets s = "[" ++ s ++ "]"
result = map addBrackets ["one", "two", "three"]
main = print result