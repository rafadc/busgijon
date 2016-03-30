defmodule Buses do
  def positions do
    response = HTTPotion.get("http://datos.gijon.es/doc/transporte/busgijontr.json").body
    |> Poison.decode!
    positions = response["posiciones"]["posicion"]
    |> Enum.map(fn(x) -> %{line: x["idlinea"], x: x["utmx"], y: x["utmy"]} end)
  end
end
