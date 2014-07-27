## Put comments here that give an overall description of what your
## functions do

## set and get matrix then set and get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
                }
                get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
        setmatrix=setmatrix,
         getmatrix=getmatrix)
}


## calculates the inverse of the matrix unless it has been calculated before in which case it retrives it

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        
         m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
