defmodule Excomma do
  import NimbleParsec
  @moduledoc """
  Simple parser to format numbers in italian/europe style (comma => 1,2 = 1.2)
  """

  nat = integer(min: 1)
  sep = string(",")

  defcombinatorp(:number, choice([ nat |> concat(sep) |> concat(nat) |> post_traverse(:to_number), nat]) |> eos())

  def parse(term) when is_binary(term) do
    case parse_number(term) do
      # error if parser cant make sense of the term
      {:error, reason, rest, _, _, _} -> {:error, reason, rest}

      # case of success
      {:ok, [val], _, _, _, _} -> {:ok, val}
    end
  end

  defparsecp(:parse_number, parsec(:number))

  defp to_number(_rest, [right, ",", left], context, _line, _offset) do
    {[String.to_float("#{left}.#{right}")], context}
  end
end
