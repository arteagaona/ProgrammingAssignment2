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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
