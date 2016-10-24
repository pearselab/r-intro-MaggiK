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

#5. A biologist is modelling population growth using a Gompertz curve, which is defined as y(t) = a.e−b.e−c.t where y is population size, t is time, a and b are parameters, and e is the exponent al function. Write them a function that calculates population size at any time for any values of its parameters.
a= .1
b= 2
c= .5
t= 5
pop_growth=function(a, b, c, t){
a*exp((-b)*exp((-c)*t)) 
}

#plugging in random numbers
y=pop_growth(a,b,c,t)
y
#6. The biologist likes your function so much they want you to write another function that plots the progress of the population over a given length of time. Write it for them.
plot(t, y, xlab= "Time", ylab="Population Growth")


#7. The biologist has fallen in love with your plotting function, but want to colour y values above a as blue, and y values above b as red. Change your function to allow that.
plot(t, y, xlab= "Time", ylab="Population Growth", col=ifelse(a<y, "blue", ifelse(y>b, "red", "black")))




