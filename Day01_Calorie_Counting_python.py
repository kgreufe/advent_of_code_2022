
file = open(file = "input data/day01_input.txt", mode = "r")
inpt = file.read()

totals = []
elves = inpt.split(sep = "\n\n")

def rmblanks_asint(x):
  if x == "":
    return(0)
  else:
    return(int(x))



for elf in elves:
  totals.append( sum([rmblanks_asint(x) for x in elf.split("\n")]) )


# puzzle 1
#   69626
print( 
    max(totals) 
  ) 

# puzzle 2
#   206780
print(
  sum(sorted(totals, reverse = True)[0:3])
  )
