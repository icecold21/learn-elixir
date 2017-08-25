defmodule Identicon do
  def main(input) do
    input
    |> hash_input
  end

  # [114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]
  def hash_input(input) do
     hex = :crypto.hash(:md5, input)
     |> :binary.bin_to_list

     %Identicon.Image{hex: hex}
  end
end
