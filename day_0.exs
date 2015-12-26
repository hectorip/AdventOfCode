instructions = "((()))))"  # should result in -2

defmodule InstructionReader do
  @up_char "("
  @down_char ")"
  def render_result(instructions) do
      res = 0
      for <<"(" <- instructions>>, do: res = res + 1
      for <<")" <- instructions>>, do: res = res - 1
      res
  end
end


