## Testing push tutorial from Alan Berger at https://bit.ly/36hNe87

## Dependancies : "matlib" packages
## Put comments here that give an overall description of what your
## functions do
## explanation on inverse : https://bit.ly/3phBF9A

## makeCacheMatrix = create matrix, and evaluate if the matrix does
## have a possible inverse, and send to specific variable

## uncomment below if matlib not installed in your machine
## install.packages("matlib")
## library(matlib)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  x
  if(det(x) > 1 || det(x) < -1) {
    message("matrix have inverse, insert to variable")
    val <- x
  } else {
    message("no possible inverse, try again!!")
    val <- NULL
  }
  val #need evaluate for det(x) 0,000xx, cannot create inverse but still catch as having inverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
