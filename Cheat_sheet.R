#• cat- Outputs the objects, concatenating the representations. cat performs much less conversion than print.
#• cbind- Take a sequence of vector, matrix or data-frame arguments and combine by columns or rows, respectively. These are generic functions with methods for other R classes.
#• col- Returns a matrix of integers indicating their column number in a matrix-like object, or a factor of column labels.
#•row- Returns a matrix of integers indicating their row number in a matrix-like object, or a factor indicating the row labels.
#• cut- cut divides the range of x into intervals and codes the values in x according to which interval they fall. The leftmost interval corresponds to level one, the next leftmost to level two and so on.
#• diff- Returns suitably lagged and iterated differences.
#• dim- Retrieve or set the dimension of an object.
#• rownames- Retrieve or set the row or column names of a matrix-like object.
#•colnames-  Retrieve or set the row or column names of a matrix-like object.
#•names- Functions to get or set the names of an object.
#• expand.grid- Create a data frame from all combinations of the supplied vectors or factors. See the description of the return value for precise details of the way this is done.
#• eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", not ?%*%, as this is an operator, and document the function, not the maths
  #eigen- Computes eigenvalues and eigenvectors of numeric (double, integer, logical) or complex matrices.
  #lower/upper.tri- Returns a matrix of logicals the same size of a given matrix with entries TRUE in the lower or upper triangle.
  #%*%- Multiplies two matrices, if they are conformable. If one argument is a vector, it will be promoted to either a row or column matrix to make the two arguments conformable. If both are vectors of the same length, it will return the inner product (as a matrix).
  # diag- Extract or replace the diagonal of a matrix, or construct a diagonal matrix.
#• gl- Generate factors by specifying the pattern of their levels.
#• identical- The safe and reliable way to test two objects for being exactly equal. It returns TRUE in this case, FALSE in every other case.
#• image- Creates a grid of colored or gray-scale rectangles with colors corresponding to the values in z. This can be used to display three-dimensional or spatial data aka images. This is a generic function.
#• library- library and require load and attach add-on packages.
#• length-Get or set the length of vectors (including lists) and factors, and of any other R object for which a method has been defined.
#• jitter- Add a small amount of noise to a numeric vector.
#• ls; what does rm(list=ls()) do?- s and objects return a vector of character strings giving the names of the objects in the specified environment. When invoked with no argument at the top level prompt, ls shows what data sets and functions a user has defined. When invoked with no argument inside a function, ls returns the names of the function's local variables: this is useful in conjunction with browser.
#• mean- mean(x, ...)
#•median- median(x, na.rm = FALSE)
#•max- max(..., na.rm = FALSE)
#     min(..., na.rm = FALSE)
#• paste- Concatenate vectors after converting to character.
#• read.csv, read.table, write.csv, write.table- reads/writes csv and tables
#• rnorm, pnorm, dnorm, qnorm- Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
#• runif, rpois- These functions provide information about the uniform distribution on the interval from min to max. dunif gives the density, punif gives the distribution function qunif gives the quantile function and runif generates random deviates.
#• rank- Returns the sample ranks of the values in a vector. Ties (i.e., equal values) and missing values can be handled in several ways.
#• sort, rank, order- Sort (or order) a vector or factor (partially) into ascending or descending order. For ordering along more than one variable, e.g., for sorting data frames, see order.
#• outer- The outer product of the arrays X and Y is the array A with dimension c(dim(X), dim(Y)) where element A[c(arrayindex.x, arrayindex.y)] = FUN(X[arrayindex.x], Y[arrayindex.y], ...).
#• rep- rep replicates the values in x. It is a generic function, and the (internal) default method is described here.
#• rowSum, colSum- Compute column sums across rows of a numeric matrix-like object for each level of a grouping variable. rowsum is generic, with a method for data frames and a default method for vectors and matrices
#• seq- Generate regular sequences. seq is a standard generic with a default method. seq.int is a primitive which can be much faster but has a few restrictions. seq_along and seq_len are very fast primitives for two common cases.
#• source- source causes R to accept its input from the named file or URL or connection. Input is read and parsed from that file until the end of the file is reached, then the parsed expressions are evaluated sequentially in the chosen environment.
#• which, which.min, which.max- Give the TRUE indices of a logical object, allowing for array indices.
#• setdiff, intersect, union- Performs set union, intersection, (asymmetric!) difference, equality and membership on two vectors.
#• table- table uses the cross-classifying factors to build a contingency table of the counts at each combination of factor levels.
#• with make sure you read the examples as this is a simple function whose technical explanation can be complex. The data argument to many plotting functions allows you to do something similar.
  #- Evaluate an R expression in an environment constructed from data, possibly modifying (a copy of) the original data.

