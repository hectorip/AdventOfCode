instructions = "((()))))"  # should result in -2

defmodule InstructionReader do
  @up_char "("
  @down_char ")"
  def render_result(instructions) do
      res = 0
      up = for <<"(" <- instructions>>, do: 1
      down = for <<")" <- instructions>>, do: 1
      up = Enum.reduce up, 0, &(&1 + &2)
      down = Enum.reduce down, 0, &(&1 + &2)
      up - down
  end
end


