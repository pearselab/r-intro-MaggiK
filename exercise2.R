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
p_func <- function(num){
  if(sum(num/1:num==num%/%1:num)==2)
    print(paste(num, "job: Number"))
}

#checking the function
p_func(7)

#credit: http://stackoverflow.com/questions/19767408/prime-number-function-in-r

#4 Write a loop that prints out the numbers from 1 to 20, printing “Good: NUMBER” if the number is divisible by five and “Job: NUMBER” if then number is prime, and nothing otherwise.

for(num in 1:20){
  if(num%%5==0) {
    print(paste(num, "Good: number")) } else {
      p_func(num)
    }
}






