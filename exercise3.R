###Programming for Biologists
###Exercise 3

#1. Implement a cat class, complete with race and print methods
kittywitty <-list(length=15, weight=10, breed="white")
class(kittywitty)<- "cat"

new.cat<-function(weight, breed){
  output <- list(weight=weight, breed=breed)
  class(output)<- "cat"
  return(output)
}

####Race Methods
race <- function(first, second){
  if(!inherits(first, "cat") | !inherits(second, "cat"))
    stop("You haven’t given me two cats!")
  if(first$weight < second$weight){
    print("First cat won!")
    return(first)
  }
  print("Second cat won!")
  return(second)
}

###print methods
print.cat <- function(x, ...){
  cat("This ", x$breed, "cat weighs ", x$weight, "kg")
}

#testing
new.cat(20, "brown") #This  brown cat weighs  20 kg (it works!)

#2. Implement a point class that holds x and y information for a point in space.
pts <-list(x=2, y=4)
class(pts)<- "pts"

new.pts<-function(x, y){
  output <- list(x=x, y=y)
  class(output)<- "pts"
  return(pts)
}
new.pts(2,4)

#3. Write a distance method that calculates the distance between two points in space
pts <-list(x=2, y=1)
class(pts)<- "pts"
pts

new.pts<-function(x, y){
  output <- list(x=x, y=y)
  class(output)<- "pts"
  return(output)
}

pt1=new.pts(1,1)
pt2=new.pts(3,1)
pt3=new.pts(6,3)

print.pts<-function(pt1,pt2, ...){
  dif = sqrt(sum((pt1$x-pt2$x)^2))
  return(dif)
}
#testing it with the points created above
print.pts(pt1, pt3)

#4. Implement a line class that takes two point objects and makes a line between them

#creating the line class function
new.lne<-function(x1,y1,x2,y2){
  output<-segments(x1,y1,x2,y2)
  class(output<- "lne")
  return(output)
}


plot.new()
line1<-new.lne(pt1$x, pt1$y, pt3$x, pt3$y)
line2<- new.lne(pt2$x, pt2$y, pt3$x, pt3$y)
line3<- new.lne(pt1$x, pt1$y, pt2$x, pt2$y)

lines(pt1, pt3)
segments(pt1$x, pt1$y, pt3$x, pt3$y)
pot1=c(2,2)
pot2=c(4,5)
segments(pot1, pot2)

#5. Implement a polygon class that stores a polygon from point objects. Hint: a polygon is really just a load of lines.
new.poly<-function(ln1, ln2, ln3){
  output<-list(ln1, ln2, ln3)
  class(output<- "poly")
  return(output)
}
new.poly(line1, line2, line3)

#6. Write plot methods for point and line objects.

lines(list(lines(lines(cbind(x,y)), ID="a")))
plot(NA, xlim=c(0,10), ylim=c(0,10), xlab="x", ylab="y")

