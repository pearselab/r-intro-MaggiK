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
pop_growth=function(a, b, c, d){
    a*exp((-b)*exp((-c)*i))
}
pop_growth(280,100,.4,30)#Thank you Karen!!

#plugging in random numbers
y=pop_growth(a,b,c,t)
y
#6. The biologist likes your function so much they want you to write another function that plots the progress of the population over a given length of time. Write it for them.
pop_growth=function(a, b, c, d){
  t<-0
  vector<-0
  tme= c(1:d)
  for (i in tme){
    t=c(t, i)
    pop <- a*exp((-b)*exp((-c)*i))
    vector= c(vector, pop)
  }
  plot(t, vector, xlab= "Time", ylab="Population Growth")
}
pop_growth(280,100,.4,30)#Thank you Karen!!

#7. The biologist has fallen in love with your plotting function, but want to colour y values above a as blue, and y values above b as red. Change your function to allow that.
pop_growth=function(a, b, c, d){
  t<-0
  vector<-0
  tme= c(1:d)
  for (i in tme){
    t=c(t, i)
    pop <- a*exp((-b)*exp((-c)*i))
    vector= c(vector, pop)
  }
  plot(t, vector, xlab= "Time", ylab="Population Growth", col=ifelse(a<vector, "blue", ifelse(vector>b, "red", "black")))
}
pop_growth(280,100,.4,30)#Thank you Karen!!

#8. You are beginning to suspect the biologist is taking advantage of you. Modify your function to plot in purple any y value that’s above a and b. Hint: try putting 3==3 & 2==2 and 3==4 | 2==2 into an if statement and see what you get. Using this construction may make this simpler.
pop_plot=function(t,y){
  plot(t, y, xlab= "Time", ylab="Population Growth", col=ifelse(y>a & y>b , "purple", "black"))
}
pop_plot(5, y)

#9. Write a function that draws boxes of a specified width and height that look like this (height 3, width 5):
#x values of the points
x<-c(1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,1.0,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.0)
#y values of the points
y<-c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,2.0)
#creating a function to plot the x and y values to display a box
bx_func<-function(x,y){
plot(x,y, type="n", axes=F, ann=F, xlim=c(0,10), ylim=c(0,10), pch=8)
points(x,y, pch=8)
}

#10. Modify your box function to put text centred inside the box, like this:
x<-c(1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,1.0,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.0)
y<-c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,2.0)
tx<- "smile"
#changing the function to include text in the middle
bx_func<-function(x,y,tx){
  plot(x,y, type="n", axes=F, ann=F, xlim=c(0,10), ylim=c(0,10), pch=8)
  points(x,y, pch=8)
  text(1.5,2, labels="some text", pos=4)
}
bx_func(x,y,tx)

#11. Modify your box function to build boxes of arbitrary text, taking dimensions specified in terms of dimensions, not the text. For example, box("wdp", 3, 9, "hey") might produce:
x<-c(1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,1.0,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.0)
y<-c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,2.0)
tx<- "smile"

bx_func<-function(x,y,tx){
  plot(x,y, type="n", axes=F, ann=F, xlim=c(0,10), ylim=c(0,10))
  text(x,y, labels="ski", cex=.5)
  text(2,2, labels=tx, pos=4)
}
bx_func(x,y,tx)

cat("hey\n\n")


##random stuff
plot(x,y, type="n", axes=F, ann=F, xlim=c(0,10), ylim=c(0,10))
text(x,y,label="wdp",col='blue', cex=.5)
points(x,y, pch=)
par(fin=.3,.5)

plot(-1:1, -1:1, type = "n", xlab = "Re", ylab = "Im")
K <- 16; text(exp(1i * 2 * pi * (1:K) / K), col = 2)

dat <- data.frame(x=rnorm(100), y1=rnorm(100)-1, y2=rnorm(100), y3=rnorm(100)+1)
plot(y1 ~ x, data=dat, type='n', ylim=c(-4, 4))     
text(dat$x,dat$y1,label=0,col='blue')
text(dat$x,dat$y2,label=1,col='green')
text(dat$x,dat$y3,label=2,,col='red')

