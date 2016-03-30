defmodule Busgijon.BusUpdateChannel do
  use Phoenix.Channel

  def join("bus:update", _message, socket) do
    {:ok, socket}
  end

end
