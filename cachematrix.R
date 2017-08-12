## Implementation of two functions that are used to create a special
## object that stores a matrix -assumed invertible- and cache its inverse

## Creates a list containing a function to set and get the value of the
## matrix and its inverse -here we assume the matrix is invertible-

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) inverse <<- solve
    getInverse <- function() inverse
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Calculates the inverse of the special 'matrix' created with 
## makeCacheMatrix. If the inverse has already been calculated,
## the function takes it from the cache, if not, it calculates
## the inverse and sets the value in the cache.

cacheSolve <- function(x, ...) {
    inverse <- x$getInverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setInverse(inverse)
    inverse
}
