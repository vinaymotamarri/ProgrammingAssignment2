## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  Set_Matrix <- function(y){
    x <<- y
    inverse <<- NULL
  }
  Get_Martix <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(Set_Matrix = Set_Matrix, Get_Matrix = Get_Matrix, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$Get_Matrix()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse     
}
## Done
