## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#A pair of function that cache inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                inv <<-NULL
        }
        get<-function() x
        setInverse <-function(inverse) inv<<-inverse
        getInverse <-function()inv
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
##Same function 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s<- x$getsolve()
        if(!is.null(s)){
                message("get inversed matrix")
                return(s)
        }
        data<-x$get()
        s<-solve(data,...)
        s$setsolve(s)
        s
}
