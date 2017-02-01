use Mix.Config

config :ecto_dynamicexpr_bug, ecto_repos: [Ecto.DynamicexprBug.Repo]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
