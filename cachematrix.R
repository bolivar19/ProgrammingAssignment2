## The main purpose is to create a square martix, assign to a cached value, and next calculate her inverse. 
## Contains the following functions:
## setMatrix      set the value of a matrix
## getMatrix      get the value of a matrix
## cacheInverse   get the cahced value (inverse of the matrix)
## getInverse     get the cahced value (inverse of the matrix)


## The following function is to store a square matrix and a cached value 
## of her inverse.

makeCacheMatrix <- function(x = matrix()) {
		
		cache <- NULL
        
        
        setMatrix <- function(Value) {
                x <<- Value
                cache <<- NULL
        }

        getMatrix <- function()x
        

         
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        
        getInverse <- function() cache
        
        
        # return a list
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


##The following function calculates the inverse of a square matrix created with 
## makeCacheMatrix.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inverse <- x$getInverse()
        
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        
        vdata <- x$getMatrix()
        inverse <- solve(vdata)
        x$cacheInverse(inverse)
        
        
        inverse
}
