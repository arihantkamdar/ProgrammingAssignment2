## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache = NULL
  set = function(y){
    cache <<- NULL
    x <<- y
  }
  get = function(){
    x
  }
  setInverse = function(){
    print(cache)
    cache<<-solve
  }
  getinverse = function(){
    cache
  }
  list(set = set,get = get,setInverse = setInverse,getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cache <- x$getinverse()
  print(cache)
  if(!is.null(cache)){
    print("found cache match")
    return(cache)
  }
  
  data = x$get()
  print(data)
  print("cache not found")
  cache = x$setInverse()
  cache
}
