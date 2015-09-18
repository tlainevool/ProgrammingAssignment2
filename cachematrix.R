# This pair of functions caches the inverse of a matrix

# Creates a special "matrix" object that can cache its inverse.
#
# Args:
#   x: The matrix that will have its inverse cached.
#
# Returns:
#   A special "matrix" object that can be used bt the "cacheSolve" function
#       to cache and retrieve the inverse
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x

        list(set = set, get = get)
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
        ## Return a matrix that is the inverse of 'x'
}
