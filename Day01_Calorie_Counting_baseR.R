# re-doing day one in base R

input <- readLines(con = "input data/day01_input.txt")

elves <- split(x = input, f = cumsum(input == "") )

calories <- sapply(X = elves, FUN = \(x) sum(as.numeric(x[x != ""])) ) 


# puzzle 1 answer
#   69626
max(calories)


# puzzle 2 answer
#   206780
calories |> 
  sort(decreasing = TRUE) |> 
  head(3) |> 
  sum()