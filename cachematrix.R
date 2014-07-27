## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Object x is assigned inside environment of function  makeCacheMatrix
## The function environment can compute inverse operation inside

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
            x <<- y
            m <<- NULL
        }
        get<-function() x
        setmatrix <- function(solve) m<<- solve
        getmatrix <- function() m
        list(set = set, get = get, setmatrix = setmatrix,  getmatrix = getmatrix)
}


## Write a short comment describing this function

## Object x is rescue from inside environment and if null compute inverse with solve
## The inverse matrix is maintained inside the environment

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)){
           message("rescatando dato en cache")
           return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
}
