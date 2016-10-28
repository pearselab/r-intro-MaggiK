###Programming for Biologists
###Exercise 3

###1. Implement a cat class, complete with race and print methods
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

###2. Implement a point class that holds x and y information for a point in space.
pts <-list(x=2, y=4)
class(pts)<- "pts"

new.pts<-function(x, y){
  output <- list(x=x, y=y)
  class(output)<- "pts"
  return(pts)
}
new.pts(2,4)

###3. Write a distance method that calculates the distance between two points in space
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

###4. Implement a line class that takes two point objects and makes a line between them

#creating the line class function that takes coordinates of points to build lines between
new.lne<-function(x1,y1,x2,y2){
  output<-list(x1,y1,x2,y2)
  class(output<- "lne")
  return(output)
}

#checking to see if it creates lines between points
#plot.new()
#line1<-new.lne(pt1$x, pt1$y, pt3$x, pt3$y)
#line2<- new.lne(pt2$x, pt2$y, pt3$x, pt3$y)
#line3<- new.lne(pt1$x, pt1$y, pt2$x, pt2$y)

#lines(pt1, pt3)
#segments(pt1$x, pt1$y, pt3$x, pt3$y)
#pot1=c(2,2)
#pot2=c(4,5)
#segments(pot1, pot2)

###5. Implement a polygon class that stores a polygon from point objects. Hint: a polygon is really just a load of lines.
new.poly<-function(lin1, lin2, lin3){
  output<-list(lin1, lin2, lin3)
  class(output<- "poly")
  return(output)
}
poly<-new.poly(line1, line2, line3)

###6. Write plot methods for point and line objects.

#method function for plotting points
plot_pts<- function(pts1, ...){
  plot(pts1$x, pts1$y)
}
#checking to see if it plots the point
plot_pts(pt2)

#method function for plotting a line between points
plot_line<- function(pts1, pts2, ...){
  segments(pts1$x, pts1$y, pts2$x, pts2$y)
}
#checking to see if it plotted the line between the points
plot_line(pt2, pt3)

###7. Write a plot method for a polygon. Hint: if this isn’t trivial, you’re doing something wrong
#plot a polygon from a list of x and y point coordinates
plot_poly<- function(ln1, ln2, ln3, ...){
  x= list(ln1$x, ln2$x,ln3$x)
  y= list(ln1$y, ln2$y, ln3$y)
  polygon(x,y)
}
plot_poly(pt1, pt2, pt3)


##8. Create a canvas object that the add function can add point, line, circle, and polygon objects to. Write plot and print methods for this class.

#My list contains points, lines and whatever type of objects
new.object<-function(point, line, circle, polygon){
  output<- list(point, line, circle, polygon)
  class(output)<- "object"
  return(output)
}

#plot method: I am plotting the object. print method: am I just printing what is in my list? am I printing coordinates/what am I printing. 
print.object<- function(ob1, ...){
  print(ob1)
}

plot_object<- function(ob1, ...){
  plot(ob1$x, ob1$y)
}

plot.new()
plot(NA, xlim=c(0,10), ylim=c(0,10), xlab="x", ylab="y")

####9. Implement a circle object that takes a point and a radius and stores a circle. Don’t make a circle out of lines!
circle_object<- function(x,y,r){
t <- seq(0,2*pi,length=100) 
coords <- t(rbind(x+sin(t)*r, y+cos(t)*r)) 
plot(coords, type= "l") 
}
#checking to see if it created a circle with the radius and point
circle_object(4,4,2)

###10. Write area generic methods for circle and polygon objects.
area<- function(r){
  UseMethod("area")
}
area.circle<- function(r){
  out= pi*r^2
  return(out)
}

###11. Add support for circle objects to your canvas.
circle_object<- function(x,y,r){
  t <- seq(0,2*pi,length=100) 
  coords <- t(rbind(x+sin(t)*r, y+cos(t)*r)) 
  plot(coords, type= "l") 
  p1= new.pts(x,y)
  p2=new.pts(x,(y-r))
  plot_line(p1,p2)
}

circle_object(3,3,2)
#I added a line in the circle. I am not sure if this is support but it seems like support to me.

####12. Add a summary method for canvas that calculates the height and width of the canvas, the fraction of the canvas covered in filled-in polygons and circles (if appropriate), and average distance between any points on the canvas (if appropriate).

summary(circle_object)

lines(list(lines(lines(cbind(x,y)), ID="a")))
plot(NA, xlim=c(0,10), ylim=c(0,10), xlab="x", ylab="y")

