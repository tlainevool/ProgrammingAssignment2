## This pair of functions caches the inverse of a matrix


# Creates a special "matrix" object that can cache its inverse.
#
# Args:
#   x: The matrix that will have its inverse cached.
#
# Returns:
#   A special "matrix" object that can be used bt the "cacheSolve" function
#       to cache and retrieve the inverse
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() {
                x
        }
        setinverse <- function(inverse) {
                i <<- inverse
        }
        getinverse <- function() {
                i
        }
        list(
                set = set, get = get,
                getinverse = getinverse, setinverse = setinverse
        )
}


# Takes a special "matrix" object created by makeCacheMatrix above and
#    computes the inverse. If the inverse has already been calculated
#    (and the matrix has not changed), then retrieve the inverse from the cache
#
# Args:
#   x: The special "matrix" object created by makeCacheMatrix.
#
# Returns:
#   A matrix that is the inverse of 'x'.
cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
