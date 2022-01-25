## Put comments here that give an overall description of what your
## functions do

# Problem 1
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        # Create variable (empty cache)
        
        InverseMatrix <- NULL
        
        # define the function
        set <- function(y){
                # the <<- operator which can be used to assign a value to an object in an environment
                x <<- y
                InverseM <<- NULL
        }
        
        # Get matrix value
        get <- function() x # returns x
        
        # Get the  inverse matix
        setInverseMatrix <- function(inv) InverseMatrix <<- inv
        
        # Retrieve the inverse matix
        getInverseMatrix <- function() InverseMatrix 
        
        # function call
        list(set = set, get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)
}

#Problem 2
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return the matrix
        InverseMatrix <- x$getInverseMatrix()
        
        
        # Check the condition of Cache is NULL or not, then do the following
        if(!is.null(InverseMatrix)){
                message("Getting Data in Cache...")
                return(InverseMatrix)
        }
        # If cache is NULL, then do te following
        value <- x$get()
        InverseMatrix <- solve(value,...)
        x$setInverseMatrix(InverseMatrix)
        InverseMatrix # Return InverseMatrix
}
