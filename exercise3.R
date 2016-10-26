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
print.pts(pt1, pt2)


