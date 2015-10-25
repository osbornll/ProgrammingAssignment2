## Assignment 3

## Osbornll
## 24 OCt, 2015

## This function caches the inverse matrix "x", that it returns a list 
# of functions that store and retrieve the inverse of matrix "x".
# Run this first on the matrix before running CacheSolve below.

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setsolve <- function(solve) m <<- solve
     getsolve <- function() m
     list(set = set, get = get,
          setsolve = setsolve,
          getsolve = getsolve)
}


## CacheSolve returns a matrix that is the inverse of 'x'. It takes
## a list created by makeCacheMatrix above and returns the inverse, 
## calculating it if this is the first call, otherwise, returning the
## cached inverse from the initial call.
cacheSolve <- function(x, ...) { 
     m <- x$getsolve()
if(!is.null(m)) {
     message("getting cached data")
     return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setsolve(m)
m
       
}
