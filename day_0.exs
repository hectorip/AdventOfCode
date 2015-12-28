defmodule InstructionReader do
  @up_char "("
  @down_char ")"
  def render_result(instructions) do
      res = 0
      up = for <<@up_char <- instructions>>, do: 1
      down = for <<@down_char <- instructions>>, do: 1
      up = Enum.reduce up, 0, &(&1 + &2)
      down = Enum.reduce down, 0, &(&1 + &2)
      up - down
  end
end

ExUnit.start

defmodule ListasTest do
  use ExUnit.Case


  test 'Testing with only ups' do
    assert InstructionReader.render_result("((((") == 4
  end
end
