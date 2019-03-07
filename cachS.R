#The following function calculates the inverse of the special "matrix" created 
#with makeCacheMatrix function. However, it first checks to see if the inverse 
#has already been calculated. If so, it gets the inverse from the cache and 
#skips the computation. Otherwise, it calculates the inverse of the matrix and 
#sets the value of the inverse in the cache via the setmatrix function.

cacheSolve <- function(x, ...){
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}