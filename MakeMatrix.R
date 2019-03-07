#MakeCacheMatrix creates a special "matrix", 
#which is really a list containing a function to
#1- set the value of the matrix
#2- get the value of the matrix
#3- set the value of the inverse
#4- get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(inverse) m <<- inverse
        getmatrix <- function() m
        list(set = set, 
             get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}