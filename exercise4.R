#####Maggi Kraft
#####Exercie 4

###1. replicate is an important function that allows you to quickly generate random numbers. Use it to create a dataset of 10 variables, each drawn from a Normal distribution with different means and variances. This can be achieved in one line.

#replicating 1 set of 10 random numbers. 
random= replicate(1, rnorm(10), simplify="vector")

#2. Make your own version of the summary function for continuous datasets (like the one you generated above). You don’t have to slavishly replicated summary.data.frame; write something you would find useful.
#summary function gives me a mean, min, max
my_summary_func<- function(x){
  mn= mean(x)
  mx = max(x)
  mnn = min(x)
  return(c(mn, mx, mnn))
}
my_summary_func(myvector)
myvector= c(0:10)

#3. Write a summary function to summarise datasets containing only categorical (...!is.numeric...) data.
character= c("dog", "cat")
my_categ_summary_func<- function(x){
  cls= class(x)
  nm= head(x)
  l= length(x)
  return(c(cls, l, nm))
}

my_categ_summary_func(character)

#4. Finally, make a summary function capable of covering both kinds of data. Hint: if your function doesn’t call the functions above, you’re likely doing it wrong.
magnificent_summary_func<- function(x){
  return(c(my_categ_summary_func(x), my_summary_func(x)))
}
magnificent_summary_func()
