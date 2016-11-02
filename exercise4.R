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
sequen=c("A","C","G","A","T","A","T","A","C","G","A","A")
sequen_df<-as.data.frame(sequen)
sequence2="ACGATATACGAA"
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

##6. The molecular biologist now asks if you would write a function that will take multiple sequences, translate them, and then flag where the sequences match-up (overlap).
