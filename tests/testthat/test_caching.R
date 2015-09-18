
test_that("The makeCacheMatrix function returns a list", {
        expect_equal(class(makeCacheMatrix(matrix())), "list")
})