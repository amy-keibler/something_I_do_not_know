defmodule Complex do

  def add({aR, aI}, {bR, bI}) do
    {(aR + bR), (aI + bI)}
  end

  def multiply({aR, aI}, {bR, bI}) do
    {(aR * bR) - (aI * bI), (aI * bR) + (aR * bI)}
  end
end
