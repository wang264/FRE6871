#################################
### FRE6871 Test #4 05/18/15
#################################
# Max score 60pts

# Please write in this file the R code needed to perform the tasks below, 
# rename the file to your_name_test4.R
# and send the file to Harjinder Singh (harjinder.singh@nyu.edu)


##################################
# 1. (20pts) Rewrite the code below using function ifelse(),
# the code below creates a vector of random numbers,
# it then subtracts "1" from those vector elements which are positive,

set.seed(1121)
vec_tor <- rnorm(10)
vec_tor[vec_tor>0] <- vec_tor[vec_tor>0] - 1

### write your code here



##################################
# 2. (20pts) Calculate the Fibonacci Sequence using a while loop,
# Calculate the Fibonacci Sequence up to the first element whose 
# value exceeds 100,
# the while loop should stop when the first element of the 
# Fibonacci Sequence exceeds 100,

### write your code here



##################################
# 3. (20pts) Modify the code below, to simulate prices hitting 
# a *negative* barrier level,
# after the prices hit the negative barrier level, the simulation 
# should stop, and "simu_prices" should be constant,

### first run this code:

set.seed(1121)  # for reproducibility
simu_max <- 1000  # max simulation trials
barrier_level <- -10  # barrier level
# simulated prices
simu_prices <- cumsum(rnorm(simu_max))


### modify some of the code below this line, as needed,

# in_dex should be "1" after prices cross barrier_level
in_dex <- cummax(simu_prices > barrier_level)

# find index when prices cross barrier_level
which_index <- which(diff(in_dex)==1)

# fill prices after crossing barrier_level
if (length(which_index)>0) {
  simu_prices[as.logical(in_dex)] <- 
    simu_prices[which_index + 1]
}  # end if

### end code to be modified,

# after you modify and run the code, the variable "which_index" should be 
# equal to the index for which the value of "simu_prices" is just about 
# to cross the barrier level,
# verify that this is true by looking at:

simu_prices[(which_index-1):(which_index+2)]

