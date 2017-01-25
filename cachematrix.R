## This solves the wk3 assignment in R programmingPut

## makeCacheMatrix makes a list of functions for storing/retriving cached matrix inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(m1) {
                m <<- m1
                inv <<- NULL
        }
        get <- function() m
        setinv <- function(inv1) inv <<- inv1
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## cacheSolve checks if the inverse already available in cache. Otherwise it computes
## the inverse with solve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv		
}
