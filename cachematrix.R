## Put comments here that give an overall description of what your
## functions do

## x is the main matrix, get() returns x, set() changes matrix and sets inversematrix to null IN TEMP ENVIRONMENT(DIFFERENT ONE )
## setinverse(x) takes the matrix as argument and sets inversematrix as desired IN TEMP ENVIRONMENT
## getinverse() returns the value of inversematrix from TEMP ENVIRONMENT
makeCacheMatrix <- function(x = matrix()) {
inversematrix<- NULL
set<- function(y){
x<<-y
inversematrix<<-NULL
}
get<- function()x
setinverse<- function(hh){inversematrix<<-solve(hh)}
getinverse<- function()inversematrix
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
        if(!is.null(x$getinverse()))
        {
         message("CACHED")
         return (x$getinverse())
        }
  message ("nah inverse not present")
  x$setinverse(x$get(),...)
  x$getinverse()
}
