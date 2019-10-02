# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :good_to_grow_app,
  ecto_repos: [GoodToGrowApp.Repo]

# Configures the endpoint
config :good_to_grow_app, GoodToGrowAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A/QMSMa2Uf0sA3aJ0MPSr4kym/1/NTbLoTou4IApLYkTnkA2YGTfdNjRjeHU0wUx",
  render_errors: [view: GoodToGrowAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GoodToGrowApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
