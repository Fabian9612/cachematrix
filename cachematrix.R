## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function, makeCacheMatrix creates a special “matrix”, which is really a list and containing:
#set and get the value of the matrix and the inverse.

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) a <<- inverse
    getinverse <- function() a
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }



## Write a short comment describing this function
#the following function retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setinverse(a)
  a
}

