#Bonus Exercise: Regular Expressions Matching
#Maggi Kraft
#Programming for biologists Fall 2016


x="It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair, we had everything before us, we had nothing before us, we were all going direct to Heaven, we were all going direct the other way- in short, the period was so far like the present period, that some of its noiosiest authorities insisted on its being received, for good or for evil, in the superlative degree of comparison only."

y=c(regex_ex) #from an .txt file I copy and pasted the text into. 
y
###############
#• All instances of “the”
gregexpr("the", y, ignore.case = TRUE)
#"the" is found 15 times in the following positions:   11  37  64  93 124 155 191 219 253 280 425 430 453 480 603

#• What lines end with vowels
regexpr("[aeiou]$", y$V1, ignore.case=TRUE)
#[1] -1 -1 71 -1 66 -1 -1 -1 -1
#The above are the locations on the lines.
gregexpr("[aeiou]$", y$V1, ignore.case=TRUE)
# lines 5 and lines 3
#[[5]] [1] 66, [[3]] [1] 71

#• What lines begin with “was”
gregexpr("^was", y$V1, ignore.case=TRUE)
#[[3]] [1]  found on line 3
regexpr("^was", y$V1)
#[1] -1 -1  1 -1 -1 -1 -1 -1 -1

#• Where “it” is written twice in a row
regexpr("it it", y$V1)
#[1] -1 -1 31 -1 -1 -1 -1 -1 -1 spot 31 on line 3
gregexpr("it it", y$V1)
#[[3]] 31

#• Where three vowels are written in a row inside a single word
regexpr("[aeiou]{3}", y$V1)
#[1] -1 -1 -1 -1 -1 -1 -1 14 -1 spot 14
gregexpr("[aeiou]{3}", y$V1)
#[[8]] 14  line 8 and spot 14
# (\\S+)\\s*
#• All the words that come after the word “the”
gregexpr("(?<=the )[^ ]*(?= )", y$V1, perl=TRUE)
regexpr("(?<=the )[^ ]*(?= )" , y$V1, perl=T)
gregexpr("(?<=the )(\\w+)", y$V1, perl=T) #I think this works
y

##############use strsplit to cut the entire string into sections on each new line
x #this is the text in one single string. For the previous part of the assignment I was using an already split up version of the text file. 
split= strsplit(x, ",") #splits at the commas. Not sure if this is the "sections" that were asked for
split #just viewing the results

#######repeat the exercise using grepl

#• All instances of “the”
grepl("the", y$V1, ignore.case = TRUE) 
#returns true/false for each line that contains "the"
# [1]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE 

#• What lines end with vowels
grepl("[aeiou]$", y$V1, ignore.case=TRUE)
#lines three and five end with a vowel
#[1] FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE

#• What lines begin with “was”
grepl("^was", y$V1, ignore.case=TRUE)
#line three begins with "was"
#[1] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE

#• Where “it” is written twice in a row
grepl("it it", y$V1)
#it is repeated on the third line
#[1] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE

#• Where three vowels are written in a row inside a single word
grepl("[aeiou]{3}", y$V1)
#three vowels are writen in a row on the eigth line
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE

#• All the words that come after the word “the”
grepl("(?<=the )(\\w+)", y$V1, perl=T)
