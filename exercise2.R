#Programming for Biologists 10/24
#control flow exercises

#1. Write a loop that prints out the numbers from 20 to 10
for (i in 20:10){
  print(i)
}

#2. Write a loop that print out only the numbers from 20 to 10 that are even
for(i in 20:10){
  if(i%%2 ==0)
  print(i)
}

#3. Write a function that calculates whether a number is a prime number (hint: what does 2 %% 3 give you?)
num = as.integer(3)

b = 0
if(num > 1) {
  # check for factors
  b = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      b = 0
      break
    }
  }
} 

if(num == 2)    b = 1
if(b == 1) {
  print(paste(num,"is a prime number"))
} else {
  print(paste(num,"is not a prime number"))
}

#4 Write a loop that prints out the numbers from 1 to 20, printing “Good: NUMBER” if the number is divisible by five and “Job: NUMBER” if then number is prime, and nothing otherwise.

for(num in 1:20){
b = 0
if(num > 1) {
  # check for factors
  b = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      b = 0
      break
    }
    if(num%%5==0){
      b= 0
    
    }
  }
} 

if(num == 2)    b = 1
if(b == 1) {
  print(paste("Prime: number"))
} else {
  print(paste("Good:number"))
}
}




for(i in 1:20){
  if(i%%5==0)
  print(i)
}
