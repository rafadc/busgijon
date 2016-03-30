ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Busgijon.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Busgijon.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Busgijon.Repo)

