ExUnit.start

Mix.Task.run "ecto.create", ["--quiet"]
Mix.Task.run "ecto.migrate", ["--quiet"]
Ecto.Adapters.SQL.begin_test_transaction(PhoenixTutorial.Repo)

ExUnit.configure(exclude: [:error_view_case]) 
