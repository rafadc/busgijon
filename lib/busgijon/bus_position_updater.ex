defmodule Busgijon.BusPositionUpdater do
  use GenServer
  require Logger

  def start_link do
    GenServer.start_link(__MODULE__, %{})
  end

  def init(state) do
    Process.send_after(self(), :work, 5_000)
    {:ok, state}
  end

  def handle_info(:work, state) do
    positions = Buses.positions

    Busgijon.Endpoint.broadcast("bus:update", "new_bus_positions", %{positions: positions})

    Process.send_after(self(), :work, 5_000)

    {:noreply, state}
  end
end
