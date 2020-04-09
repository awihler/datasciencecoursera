# Matrixinversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeastedly.  The
# two functions below cache the inverse of a matrix.


# makeCacheMatrix() 
# Creates an object that stores a square matrix and its inverse. 
# The functions are returned as a list.
# 
# Input initialized as a function argument and must include matrix 
# values and dimensions.
# Note: The matrix supplied must be square and invertible
#
makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL
    
    # set() is included so that once an object of type makeCacheMatrix() 
    # is created, its value can be changed without initializing another 
    # instance of the object.    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() x
    
    setsolve <- function(inv_matrix) inv <<- inv_matrix
    
    getsolve <- function() inv
    
    list(set = set, 
         get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


# cacheSolve() 
# Uses the argument returned by makeCacheMatrix() to retrieve the inverse
# matrix from the cached value that is stored in the makeCacheMatrix()
# object's environment.
#
cacheSolve <- function(x, ...) {
    
    # Retrieve the inverse matrix from the object passed in as the argument
    inv <- x$getsolve()
    
    # Check to see whether the result is NULL
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    # Calculate an inverse (square) matrix using solve()
    data <- x$get()
    inv <- solve(data, ...)
    x$setsolve(inv)
    inv
}
