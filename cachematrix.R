# cachematrix.R
# Contains two functions: makeCacheMatrix(), cacheSolve() 
# makeCacheMatrix() creates an object that stores a square matrix and 
# its inverse. 
# cacheSolve() uses the argument returned by makeCacheMatrix()
# to retrieve the inverse matrix from the cached value that is 
# stored in makeCacheMatrix() object's environment.


# makeCacheMatrix() 
# Creates an object that stores a square matrix and its inverse. 
# The functions are returned as a list.
# 
# Input initialized as a function argument and must include matrix 
# values and dimensions.
# Note: The matrix supplied must be square and invertible
#
makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    
    # set() is included so that once an object of type makeCacheMatrix() 
    # is created, its value can be changed without initializing another 
    # instance of the object.    
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

# cacheSolve() 
# Populates or retrieves the inverse matrix from an object of type
# makeCacheMatrix()
#
cacheSolve <- function(x, ...) {
    
    # Retrieve the inverse matrix from the object passed in as the argument
    m <- x$getsolve()
    
    # Check to see whether the result is NULL
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
    # Calculate an inverse (square) matrix using solve()
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}