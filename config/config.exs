# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :ecto_dynamicexpr_bug, ecto_repos: [Ecto.DynamicexprBug.Repo]

config :ecto_dynamicexpr_bug, Ecto.DynamicexprBug.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_dynamicexpr_bug_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
