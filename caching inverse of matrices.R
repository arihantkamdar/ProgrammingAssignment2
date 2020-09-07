makeCahchematrix = function(x = c()){
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

cacheMatrix = function(x){
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

mat = matrix(c(1,5,4,3,8,9,0,0,2),3,3)
demo = makeCahchematrix(x = mat)
test = cacheMatrix(x = demo)
