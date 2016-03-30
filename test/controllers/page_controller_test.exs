defmodule Busgijon.PageControllerTest do
  use Busgijon.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Bus Gijón"
  end
end
