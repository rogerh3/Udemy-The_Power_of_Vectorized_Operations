#Udemy - The Power of Vectorized Operations
#12/19/2021

#5 randomnized numbers from a normal distribution
x <- rnorm(5)
x

#prints all index values 1-5 for x
#the i is iterating over the actual element(vector) itself
#R specific programming loop
for(i in x){
  print(i)
}

#print each value of x
#iterative process that a loop can do
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#here we want j to iterate over 1,2,3,4,5 - Will see in all languages
#conventional programming loop
for(j in 1:5){
  print(x[j])
}

#---------------------------------------------------------------------------
#part 2

N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach
c <- a*b

#De-vectorized approach

#Create an empty bin or vector 
#NA means nothing is in it
#100 empty spaces in vector d
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i]*b[i]
}

#c and d are the same result
#vectorized approach is shorter and de-vectorized approaches are longer
#to create as well as the de-vectorized loop takes longer to run.
#This is an example of where Data structure ideas come into place as the 
#side of what you are running gets larger.

#Part of the reason is R is acting as a wrapper for another code when using
#the loop and it takes longer to run through that process 
