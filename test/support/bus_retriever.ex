ExUnit.start

defmodule Busgijon.PositionRetrieverTest do
  use ExUnit.Case, async: true

  test "can retrieve the position of at least one bus" do
    positions = Buses.positions
    assert(Enum.count(positions) > 0)
  end
end
