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
  if(is.numeric(x)){
    return(my_summary_func(x))
    } else {
      return(my_categ_summary_func(x))
    } 
}
magnificent_summary_func(myvector)

#5. A molecular biologist you owe a favour approaches you with a problem. They have a DNA sequence (e.g., ‘ACGATATACGA’) that they need to group into codons (groups of three) and translate into proteins (ignoring all complexities of translation and transcription). Write them a function that will take an arbitrary input sequence and an arbitrary codon lookup table, and output the translated sequence. Hint:expand.grid will help you make a demo lookup table.
sequence=c("A","C","G","A","T","A","T","C","G","A")
codon=c("ATA", "CGA")
proteins=c("x","y")
#creating a lookup matrix
table<- matrix(c(proteins), ncol=2)
colnames(table)<-c(codon)
table


