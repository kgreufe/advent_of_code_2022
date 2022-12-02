

f = open(file = "input data/day02_input.txt", mode = "r")
inpt = f.readlines()


# puzzle 1
#   15523

dict_one = {
    "A X": 4,
    "A Y": 8,
    "A Z": 3,
    "B X": 1,
    "B Y": 5,
    "B Z": 9,
    "C X": 7,
    "C Y": 2,
    "C Z": 6
  }

results_one = []

for line in inpt:
  line = line.strip()
  results_one.append(dict_one[line])
  
  
print( sum(results_one) )



# puzzle 2
#   15702

dict_two = {
    "A X": 3,
    "A Y": 4,
    "A Z": 8,
    "B X": 1,
    "B Y": 5,
    "B Z": 9,
    "C X": 2,
    "C Y": 6,
    "C Z": 7
  }
  
results_two = []  

for line in inpt:
  line = line.strip()
  results_two.append(dict_two[line])

print( sum(results_two) )

