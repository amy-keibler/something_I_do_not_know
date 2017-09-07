defmodule ComplexTest do
  use ExUnit.Case
  use Quixir

  alias Pollution.VG, as: PVG


  test "addition of complex numbers" do
    ptest aR: int(), aI: int(), bR: int(), bI: int() do
      assert Complex.add({aR, aI}, {bR, bI}) == {aR + bR, aI + bI}
    end
  end

  test "multiplication of complex numbers" do
    ptest aR: int(), aI: int(), bR: int(), bI: int() do
      real = (aR * bR) + ((aI * bI) * -1)
      imaginary = (aI * bR) + (aR * bI)
      actual = Complex.multiply({aR, aI}, {bR, bI})
      assert actual == {real, imaginary}
    end
  end
end
