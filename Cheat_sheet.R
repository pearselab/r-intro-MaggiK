#Cheat Sheet for R: Exercise 1
#Maggi Kraft
#Programming for biologists Fall 2016

# cat- Outputs the objects, concatenating the representations. 
#  - cat(... , file = "", sep = " ", fill = FALSE, labels = NULL, append = FALSE)

#• cbind- Take a sequence of vector, matrix or data-frame arguments and combine by columns or rows, respectively. 
#  - use this and rbind to combine numerous variables into an object

#• col- Returns a matrix of integers indicating their column number in a matrix-like object, or a factor of column labels.
# - col(x, as.factor = FALSE)

#•row- Returns a matrix of integers indicating their row number in a matrix-like object, or a factor indicating the row labels.
#   - row(x, as.factor = FALSE)

#• cut- cut divides the range of x into intervals and codes the values in x according to which interval they fall. 
# - cut(x, breaks, labels = NULL,include.lowest = FALSE, right = TRUE, dig.lab = 3, ordered_result = FALSE, ...)
#   - where: breaks-> either a numeric vector of two or more unique cut points or a single number      giving the number intervals into which x is to be cut. 

#• diff- Returns suitably lagged and iterated differences.
# - diff(x, lag = 1, differences = 1, ...) or
# - you can use this for dates: Julian dates and difference between

#• dim- Retrieve or set the dimension of an object.

#• rownames or colnames- Retrieve or set the row or column names of a matrix-like object.
# - example: 
m0 <- matrix(NA, 4, 0)
rownames(m0)

#•names- Functions to get or set the names of an object.
# - names(x)

#• expand.grid- Create a data frame from all combinations of the supplied vectors or factors. 
# - expand.grid(..., KEEP.OUT.ATTRS = TRUE, stringsAsFactors = TRUE)
# where: ...-> vecotrs, facotrs or a list containing these.
#       KEEP.OUT.ATTRS -> a logical indicating the "out.attrs" attribute
require(utils)

expand.grid(height = seq(60, 80, 5), weight = seq(100, 300, 50),
            sex = c("Male","Female"))

#• eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", not ?%*%, as this is an operator, and document the function, not the maths
#   eigen- Computes eigenvalues and eigenvectors of numeric (double, integer, logical) or complex matrices.
#   lower/upper.tri- Returns a matrix of logicals the same size of a given matrix with entries TRUE in the lower or upper triangle.
#   %*%- Multiplies two matrices, if they are conformable. If one argument is a vector, it will be promoted to either a row or column matrix to make the two arguments conformable. If both are vectors of the same length, it will return the inner product (as a matrix).
#  diag- Extract or replace the diagonal of a matrix, or construct a diagonal matrix.

#• gl- Generate factors by specifying the pattern of their levels.
# example; First control, then treatment:
gl(2, 8, labels = c("Control", "Treat"))

#• identical- The safe and reliable way to test two objects for being exactly equal. It returns TRUE in this case, FALSE in every other case.
# - identical(x, y, num.eq = TRUE, single.NA = TRUE, attrib.as.set = TRUE, ignore.bytecode = TRUE, ignore.environment = FALSE)

#• image- Creates a grid of colored or gray-scale rectangles with colors corresponding to the values in z. This can be used to display three-dimensional or spatial data aka images.

#• library- library and require load and attach add-on packages.

#• length-Get or set the length of vectors (including lists) and factors, and of any other R object for which a method has been defined.
# - length(x)

#• jitter- Add a small amount of noise to a numeric vector.

#• ls; - s and objects return a vector of character strings giving the names of the objects in the specified environment. When invoked with no argument at the top level prompt, ls shows what data sets and functions a user has defined. When invoked with no argument inside a function, ls returns the names of the function's local variables: this is useful in conjunction with browser.
#   rm(list=ls()) This will clear everything from your environment 

#• mean- mean(x, ...)

#• median- median(x, na.rm = FALSE)

#•max- max(..., na.rm = FALSE)
#     min(..., na.rm = FALSE)

#• paste- Concatenate vectors after converting to character.

#• read.csv, read.table, write.csv, write.table- reads/writes csv and tables
# - for excel sheet: library(xlsx) # load xlsxlibrary2

#• rnorm, pnorm, dnorm, qnorm- Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
# - dnorm(x, mean = 0, sd = 1, log = FALSE) where:x-> vector of quantiles
# - pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) where:q-> vector of quantiles
# - qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) where: p-> vector of probabilities
# - rnorm(n, mean = 0, sd = 1) where: n-> number of observations

#• runif, qunif, punif, dunif- These functions provide information about the uniform distribution on the interval from min to max. dunif gives the density, punif gives the distribution function qunif gives the quantile function and runif generates random deviates.
# - dunif(x, min = 0, max = 1, log = FALSE) where:x-> vector of quantiles
# - punif(q, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE) where:q-> vector of quantiles
# - qunif(p, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE) where: p-> vector of probabilities
# - runif(n, min = 0, max = 1) where: n-> number of observations

#• rank- Returns the sample ranks of the values in a vector. Ties (i.e., equal values) and missing values can be handled in several ways.
# - rank(x, na.last = TRUE, ties.method = c("average", "first", "random", "max", "min")

#• sort, rank, order- Sort (or order) a vector or factor (partially) into ascending or descending order. For ordering along more than one variable, e.g., for sorting data frames, see order.
# -sort(x, decreasing = FALSE, ...)

#• outer- The outer product of the arrays X and Y is the array A with dimension c(dim(X), dim(Y)) where element A[c(arrayindex.x, arrayindex.y)] = FUN(X[arrayindex.x], Y[arrayindex.y], ...).
# - outer(X, Y, FUN = "*", ...)
#     X %o% Y
#   where: X and Y-> first and secon arguments for runction FUN. Typical vecor or array
#   where: FUN-> a function to use on the outer products, found via match.fun

#• rep- rep replicates the values in x. 
# - rep(x, ...)
# - rep.int(x, times)-> a integer vecotor giving the number of times to repeat each element if of   length length(x) or to repeat the whole vector if of length 1. 
# - rep_len(x, length.out)-> lenth.out-> The desired length of the output vector. Other inputs will be coerced to an integer vector and the first element taken. Ignored if NA or invalid.


#• rowSum, colSum- Compute column sums across rows of a numeric matrix-like object for each level of a grouping variable. rowsum is generic, with a method for data frames and a default method for vectors and matrices
# - rowsum(x, group, reorder = TRUE, ...)

#• seq- Generate regular sequences. seq is a standard generic with a default method. seq.int is a primitive which can be much faster but has a few restrictions. seq_along and seq_len are very fast primitives for two common cases.
# - seq.int(from, to, by, length.out, along.with, ...)

#• source- source causes R to accept its input from the named file or URL or connection. Input is read and parsed from that file until the end of the file is reached, then the parsed expressions are evaluated sequentially in the chosen environment.
## If you want to source() a bunch of files, something like
## the following may be useful:
sourceDir <- function(path, trace = TRUE, ...) {
  for (nm in list.files(path, pattern = "[.][RrSsQq]$")) {
    if(trace) cat(nm,":")
    source(file.path(path, nm), ...)
    if(trace) cat("\n")
  }
}

#• which, which.min, which.max- Give the TRUE indices of a logical object, allowing for array indices.
# - for example: find the NA's in an object
which(is.na(x))

#• setdiff, intersect, union- Performs set union, intersection, (asymmetric!) difference, equality and membership on two vectors.
# - union(x, y)
# - intersect(x, y)
# - setdiff(x, y)
# - setequal(x, y)

#• table- table uses the cross-classifying factors to build a contingency table of the counts at each combination of factor levels.

#• with- 
# - Evaluate an R expression in an environment constructed from data, possibly modifying (a copy of) the original data.
# - with(data, expr, ...)

#• par- set or query graphical parameters. 
# - use with ggplot. to edit the plot and change characteristics
# -  xlog and ylog: if true a logarithmic scale is in use
# - usr: a vecor of form c(x1,x2,y1,y2) giving the extremems of the user coordinates of the plotting region
# - pch: integer specifying a symbol or single character to be used as the default in plotting points (stars, dots, dash etc)
# - mfcol, mfrow: A vector of the form c(nr, nc). Subsequent figures will be drawn in an nr-by nc array on the device by columns (mfcol), or rows (mfrow), respectively.
# - lwd: The line width

