source("../../cachematrix.R")
test_that("The makeCacheMatrix function returns a list", {
        expect_equal(class(makeCacheMatrix(matrix())), "list")
})

test_that("The get and set functions work", {
        expected <- matrix(1:9, nrow = 3, ncol = 3)
        x <- makeCacheMatrix(expected)

        expect_equal(x$get(), expected)
})

test_that("The inverse can be gotten from the 'matrix'", {
        original <- matrix(1:4, nrow = 2, ncol = 2)
        x <- makeCacheMatrix(original)

        expect_equal(cacheSolve(x), solve(original))
})

