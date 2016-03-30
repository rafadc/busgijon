defmodule Busgijon.PageController do
  use Busgijon.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", buses: Buses.positions
  end
end
