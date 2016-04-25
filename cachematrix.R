## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix will create the invertiblematrixand creates set
##   matrix/inverse and get matrix/inverse functionsto be used in the cacheSolve()
## cacheSolve prints the output of themakeCacheMatrix function

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         invr = NULL
         set = function(y) {
            x <<- y
            invr <<- NULL
   }
         get = function() x
         setinvr = function(inverse) invr <<- inverse 
         getinvr = function() invr
         list(set=set, get=get, setinvr=setinvr, getinvr=getinvr)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
             invr = x$getinvr()
     if (!is.null(invr)){
        message("Retrieving cached data")
        return(invr)
   }
     mat.data = x$get()
     invr = solve(mat.data, ...)
     x$setinvr(invr)
   
     return(invr)
}
