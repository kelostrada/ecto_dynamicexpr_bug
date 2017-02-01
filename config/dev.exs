use Mix.Config

config :ecto_dynamicexpr_bug, Ecto.DynamicexprBug.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_dynamicexpr_bug_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
