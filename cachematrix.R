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
  
  newMatrix <- function(y){
    x <<- y
    m <<- NULL
  }
  
  if(det(x) > 1 || det(x) < -1) {
    message("matrix have inverse, insert to variable")
    val <- x
  } else {
    message("no possible inverse, try again!!")
    val <- NULL
  }
  
  getMatrix <- function(){
    val
  }
  
  getCache <- function(){
    m
  }
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getCache()
  
  if(!is.null(m)) {
    message("use cached value")
    return(m)
  }
  
  data <- x$getMatrix()
  m <- det(m)
  
  
}
