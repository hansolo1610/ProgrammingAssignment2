## Two functions are created to compute the inverse of a matrix.

## This function creates an object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

   inv <- NULL                      
   set <- function(y){
   x <<- y
   inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix                   ## gets and sets matrix inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}

## If the inverse has already been calculated and the matrix has not changed, then it should retrieve the inverse from the cache.


## is function computes the inverse of the special “matrix” returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cache")
                return(inv)                                # if it's been already computed, returns cached matrix inverse 
        }
        mat <- x$get()
        inv <- solve(data)
        x$setInverse(inv)                                  # else computes inverse of matrix 
        return(inv)                                        # returns matrix
}
        ## Return a matrix that is the inverse of 'x'
