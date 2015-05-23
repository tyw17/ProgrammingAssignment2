#This function is intended to take input and turn that
#input into a invertable matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

#This function attempts to compute the inverted matrix
#from the 'makeCacheMatrix' function

cacheSolve <- function(x, ...) {
  m <- x$getmean()
  if (is.null) {
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
  }
  else {
    message("fetching cached data")
  }
}