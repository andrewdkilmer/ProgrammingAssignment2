## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setmatinv <- function(solve) minv <<- solve
  getmatinv <- function() minv
  list(set = set, get = get,
       setmatinv = setmatinv,
       getmatinv = getmatinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  minv <- x$getmatinv()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data, ...)
  x$setmatinv(minv)
  minv
}
