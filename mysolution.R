
                  #Assignment 2

#Let create the make cache matrix

makeCacheMatrix <- function(a = matrix()) {
  inverse <- NULL
  setmatrix <- function(b){
    a <<- b
    inverse <<- NULL
  }
  get <- function() a
  setInverse <- function(sol) inv <<- sol
  getInverse <- function() inverse
  list(set = setmatrix, get = get, setInverse = setInverse, getInverse = getInverse)
}


#Let build the function to compute the inverse of the matrix
cacheSolve <- function(a, ...) {
  inverse <- a$getInverse()
  if(!is.null(inverse)){
    message("Let get the cached data")
    return(inverse)
  }
  data <- a$get()
  inverse <- solve(data)
  a$setInverse(inverse)
  inverse      
}