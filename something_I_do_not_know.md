title: Tell Me Something I Don't Know About Property Testing In Elixir
author:
  name: Matt K
  url: https://github.com/matt-keibler/something_I_do_not_know
theme: sudodoki/reveal-cleaver-theme

--

# Tell Me Something I Don't Know About
## Property Testing in Elixir

--
### Property Testing
testing that focuses on defined properties of programs, modules, and functions
```elixir
len_foo = "foo" |> String.length
len_oof = "foo" |> String.reverse |> String.length
len_foo == len_oof
```
applicable to functional programming, because functions have well defined inputs and outputs

--
### Where Is It Useful?
* functions with potential edge cases
* optimized versions of algorithms

not particularly useful for cases where all inputs are equally valid

--
### Elixir Libraries
Quixir and ExCheck
* generators
* testing macros
* output

--
### Complex Number Example
multiplying complex numbers (a + bi) * (c + di) -> (ac - bd) + (bc + ad)i

--
### potential test cases
* all zeros (eg: 0 * 0)
* completely real (eg: 1 * 1)
* completely imaginary (eg: i1 * 1i)

--
### relevant property
* i^2 = -1
* (ac **- bd**) + (bc + ad)i

--
### Property Test
```elixir
test "multiplication of complex numbers works" do
  ptest aR: int(), aI: int(), bR: int(), bI: int() do
    real = (aR * bR) + ((aI * bI) * -1)
    imaginary = (aI * bR) + (aR * bI)
    actual = Complex.multiply({aR, aI}, {bR, bI})
    assert actual == {real, imaginary}
  end
end
```

-- 
## References
* [Quixir](https://hex.pm/packages/quixir)
* [ExCheck](https://hex.pm/packages/excheck)
* [QuickCheck Wikipedia](https://en.wikipedia.org/wiki/QuickCheck)
* [Complex Numbers Wikipedia](https://en.wikipedia.org/wiki/Complex_number)
* [Mandelbrot QuickCheck Tests](https://github.com/matt-keibler/mandelbrot/blob/master/test/Mandelbrot/Algorithms/EscapeTime/InternalSpec.hs)
