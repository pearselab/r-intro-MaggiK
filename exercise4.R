#####Maggi Kraft
#####Exercie 4

###1. replicate is an important function that allows you to quickly generate random numbers. Use it to create a dataset of 10 variables, each drawn from a Normal distribution with different means and variances. This can be achieved in one line.

#replicating 1 set of 10 random numbers. 
random= replicate(2, rnorm(10, mean=rnorm(1), sd= runif(1, min=0, max=1)), simplify="vector")
random
#making it into a dataframe
rando<-as.data.frame(random)
#2. Make your own version of the summary function for continuous datasets (like the one you generated above). You don’t have to slavishly replicated summary.data.frame; write something you would find useful.
#summary function 
#where x is dataframe
my_summary_func<- function(x){
  ml<- sapply(x, function(i) i*2)
  mn <- apply(x, 2, mean)
  mx <- apply(x, 2, max)
  return(c(ml,mn, mx))
}
#3. Write a summary function to summarise datasets containing only categorical (...!is.numeric...) data.
character= as.data.frame(c("dog", "cat"))
my_categ_summary_func<- function(x){
  cls= class(x)
  nm= head(x)
  l= apply(x, 1, length)
  return(c(cls, l, nm))
}

my_categ_summary_func(character)

#4. Finally, make a summary function capable of covering both kinds of data. Hint: if your function doesn’t call the functions above, you’re likely doing it wrong.
#where x is a matrix
# where is some dataframe
magnificent_summary_func<- function(x){
  numer<- sapply(x, is.numeric)
  char<- !sapply(x, is.numeric)
  nm_x<-subset(x, numer)
  ch_x<-subset(x, char)
  my_summary_func(nm_x)
  my_categ_summary_func(ch_x)
}

magnificent_summary_func(bn)

#5. A molecular biologist you owe a favour approaches you with a problem. They have a DNA sequence (e.g., ‘ACGATATACGA’) that they need to group into codons (groups of three) and translate into proteins (ignoring all complexities of translation and transcription). Write them a function that will take an arbitrary input sequence and an arbitrary codon lookup table, and output the translated sequence. Hint:expand.grid will help you make a demo lookup table.

sequence2<-"ACGATATACGAA"
codon=c("ACG", "ATA", "TAC","GAA" )
proteins=c("x","y","z","k")

#creating a lookup matrix
table= as.data.frame(cbind(codon, proteins))
table

#creating a function: splits the sequence by 3. Then matches the sequence to the codon dataframe table. The index is used to return the protein. 
#sequen: the sequence as a string
#looktable: the dataframe lookup table with columns codon and proteins
DNA_func<- function(sequen, looktable){
  x<- sapply(seq(from=1, to=nchar(sequen), by=3), function(i) substr(sequen, i, i+2))
  b<-match(x, looktable$codon)
 return(paste(looktable$proteins[b]))
}

DNA_func(sequence2, table)

