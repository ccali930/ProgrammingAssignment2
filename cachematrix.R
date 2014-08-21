## makeCacheMatrix and cacheSolve are two functions that can be used together to create a matrix, 
## perform a calculation of the inverse of the matrix, then cache the value of the inverse so it can be
## easily called 

## Creats a matrix object and functions for getting and setting the inverse of the
## matrix object

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Takes inverse of the matrix and caches it if the inverse has not yet been taken

cacheSolve <- function(x, ...) {
        
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinv(m)
        m
        
        
        
        ## Return a matrix that is the inverse of 'x'
}
