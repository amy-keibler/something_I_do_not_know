# Property Testing
* A bit off of the beaten path
* specific use cases
* tool in a tool-belt
* Quickcheck for Haskell is the most well known
* Properties of code that can be defined
* example: reverse has a property -> length of a reversed string does not change
* Useful for FP because pure functions map inputs to an output
* no internal state to make testing complex

# Where Is It Useful?
* functions with potential edge cases
* off by one errors
* missed boundaries
* validation of performance for algorithms
* correctness of a sort algorithm
* square root, logarithm, etc.
* not useful for cases where inputs are equally valid
* example: test that takes a username and retrieves the user from a database
* runs 100 generated usernames, where a single test with a factory would do

# Elixir Libraries
* Quixir and ExCheck are two property testing libraries
* Quixir -> Prag Dave
* ExCheck -> based on Erlang library "triq"
* generators define the constraints on the inputs
* example: ints, positive ints, custom structs
* macros make writing tests easier
* output so you don't have 99 pass and 1 fail
* attempts to find smallest failure case

# Complex Number Example
* simple, contrived example
* complex numbers refresher
* real and imaginary components
* sqrt(-1) = i
* multiplication -> foil method

# Potential Test Cases
* zeros
* reals
* imaginary numbers
* real times imaginary
* imaginary times real
* negative numbers, etc

# Property Test
* relevant property -> squaring i -> negative one
* everything else is algebraic simplification
* next slide
* had a bit of trouble making it play nice with structs, but it *should* work
* basic idea still holds true
* generate four numbers of any value
* assert that multiplication is a complex value where our i^2 = -1 value holds
* very contrived, only a minor difference between test and actual implementation
* I've used it to verify the behavior of the mandelbrot set algorithm


# References
