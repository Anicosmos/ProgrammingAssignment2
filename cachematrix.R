## Programming Assignment 2 
## Cache Matrix 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
      x <<- y
      inv <<- NULL
  }
  get <- function() x
  setinv <- function(matrixturn) inv <<- matrixturn
  getinv <- function() inv
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv) ## Stores the Functions that was described above 
}




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(m)) {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        
        inv <- solve(data)
        x$setinv(inv)
        inv
}
