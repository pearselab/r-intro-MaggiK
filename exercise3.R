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

new.pts<-function(x, y){
  output <- list(x=x, y=y)
  class(output)<- "pts"
  return(pts)
}

###3. Write a distance method that calculates the distance between two points in space
pts <-list(x=2, y=1)
class(pts)<- "pts"
pts

new.pts<-function(x, y){
  output <- list(x=x, y=y)
  class(output)<- "pts"
  return(output)
}

#testing out the point class with random points
pt1=new.pts(1,1)
pt2=new.pts(3,1)
pt3=new.pts(6,3)

#function to calculate distance between points
print.pts<-function(pt1,pt2, ...){
  dif=sqrt(((pt1$x-pt2$x)^2)+((pt1$y-pt2$y)^2))
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
  plot(pts1$x, pts1$y, xlim=c(0,10), ylim=c(0,10))
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
new.canvas<-function(point, line, circle, polygon){
  output<- list(point=point, line=line, circle=circle, polygon=polygon)
  class(output)<- "canvas"
  return(output)
}

# print method: Printing the object in my list
print.canvas<- function(ob, ...){
  return(ob)
}
#plot method: I am plotting all the objects.
plot_canvas<- function(ob1, ob2, ob3, ...){
  plot_pts(ob1)
  plot_line(ob1, ob2)
  plot_poly(ob1, ob2, ob3)
}
plot_canvas(pt3, pt2, pt1)


plot.new()
plot(NA, xlim=c(0,10), ylim=c(0,10), xlab="x", ylab="y")

####9. Implement a circle object that takes a point and a radius and stores a circle. Don’t make a circle out of lines!
new.circle <- function(x, y, r){
  output <- list(x=x, y=y, r=r)
  class(output) <- "circle"
  return(output)
}
c3=new.circle(8, 8, 1)

plot_circle <- function(cir, ...){
  t <- seq(0,2*pi,length=100) 
  x= t(rbind(cir$x+sin(t)*cir$r))
  y= cir$y+cos(t)*cir$r
  polygon(x,y, xlim=c(0,10), ylim=c(0,10)) #had to use polygons instead of plot to plot because it overwrote plot on the canvas.
}

#check to see if it works
plot_circle(c2)

#Got some help with the equation from: http://r.789695.n4.nabble.com/how-to-draw-a-circle-td798480.html

###10. Write area generic methods for circle and polygon objects.
area<- function(r){
  UseMethod("area")
}
area.circle<- function(r, ...){
  out= pi*r^2
  return(out)
}

###11. Add support for circle objects to your canvas.
plot_canvas<- function(ob1, ob2, ob3, ob4, ...){
  plot_pts(ob1)
  plot_line(ob1, ob2)
  plot_poly(ob1, ob2, ob3)
  plot_circle(ob4)
}
#testing to see if it works using the previously created objects
plot_canvas(ob1= pt1, ob2= pt2, ob3= pt3, ob4= c2)


####12. Add a summary method for canvas that calculates the height and width of the canvas, the fraction of the canvas covered in filled-in polygons and circles (if appropriate), and average distance between any points on the canvas (if appropriate).

summary(circle_object)

lines(list(lines(lines(cbind(x,y)), ID="a")))
plot(NA, xlim=c(0,10), ylim=c(0,10), xlab="x", ylab="y")

