## Programming Assignment on R Programming - John Hopkins University
## explanation on inverse : https://bit.ly/3phBF9A

## uncomment below if matlib not installed in your machine
## install.packages("matlib")
## library(matlib)

## ///INTRODUCTION///
## makeCacheMatrix is a function to collect variable with Matrix, evaluate,
## and store in memory to be used by cacheSolve function to check inverse.
## Function only works if the matrix  is non-singular (det() !=0)
## and non-generalized (see https://bit.ly/32FlitX)

## makeCacheMatrix = create matrix, and evaluate if the matrix does
## have a possible inverse, and send to specific variable. 
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
  
  setMatrix <- function(z){
    m <<- z
  }
  
  getCache <- function(){
    m
  }
  
  list(newMatrix = newMatrix, getMatrix = getMatrix,
       setMatrix = setMatrix, getCache = getCache
       )
}


## cacheSolve = check matrix stored by makeCacheMatrix and then solve the
## inverse, if value stored in memory use the value without re-calculating.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getCache()
  
  if(!is.null(m)) {
    message("use cached value")
    return(m)
  }
  
  data <- x$getMatrix()
  m <- inv(data)
  x$setMatrix(m)
  m
}
