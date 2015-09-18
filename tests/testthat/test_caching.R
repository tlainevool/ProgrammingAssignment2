
test_that("The makeCacheMatrix function returns a list", {
        expect_equal(class(makeCacheMatrix(matrix())), "list")
})

test_that("The get and set functions work", {
        expected <- matrix(1:6, nrow = 3, ncol = 2)
        x <- makeCacheMatrix(expected)

        expect_equal(x$get(), expected)
})
