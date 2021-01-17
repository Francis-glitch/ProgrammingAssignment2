## These codes have resemblance to the codes preesented in the COURSERA programming
## Thank you to Mr. Pramesh Pudasaini for guiding me in this project. As a student, I have still limited idea ojn how these codes work.

makeCacheMatrix <- function(x = matrix()){
      inv <- NULL
      set <- function(y){
             x <<- y
             inv <<-NULL
      }
      get <- function() {x}
      setInverse <- funtion(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
  
cacheSolve <- function (x, ...){
    inv <- x$getInverse()
     if(!is.null(inv)){
           message("Getting the Cache Data")
           return(inv)
     }
     mat <- x$get()
     inv <-solve(mat, ...)
     x$setInverse(inv)
     inv
}
