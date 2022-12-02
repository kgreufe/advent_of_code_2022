# re-doing day 2 in base R

input <- readLines(con = "input data/day02_input.txt")

# puzzle 1
#   15523
dict_one <- 
  c(A = "rock", B = "paper", C = "scissors",
    X = "rock", Y = "paper", Z = "scissors")

opp_one <- dict_one[substring(text = input, first = 1, last = 1)]
me_one  <- dict_one[substring(text = input, first = 3, last = 3)]

mat_one <- 
  matrix(data = c(3, 6, 0, 
                  0, 3, 6,
                  6, 0, 3), 
         nrow = 3, 
         byrow = TRUE, 
         dimnames = list(c("rock", "paper", "scissors"), 
                         c("rock", "paper", "scissors")) )

scores_one <- c(rock = 1, paper = 2, scissors = 3)

sum(mat_one[cbind(opp_one, me_one)]) + sum(scores_one[me_one])


# puzzle 2
#   

dict_two <- 
  c(A = "rock", B = "paper", C = "scissors",
    X = "lose", Y = "draw", Z = "win")

mat_two <- 
  matrix(data = c("scissors", "rock", "paper", 
                  "rock", "paper", "scissors", 
                  "paper", "scissors", "rock"), 
         nrow = 3, 
         byrow = TRUE, 
         dimnames = list(c("rock", "paper", "scissors"), 
                         c("lose", "draw", "win")))

scores_two <- c(rock = 1, paper = 2, scissors = 3, 
               lose = 0, draw = 3, win = 6)

opp_two <- dict_two[substring(text = input, first = 1, last = 1)]
me_two  <- dict_two[substring(text = input, first = 3, last = 3)]


sum(scores_two[mat_two[cbind(opp_two, me_two)]]) + sum(scores_two[me_two])