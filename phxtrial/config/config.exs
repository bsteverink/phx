# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phxtrial,
  ecto_repos: [Phxtrial.Repo]

# Configures the endpoint
config :phxtrial, PhxtrialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xb7xCP8hyf9YGLUzqI72yevqyjKsE8NhTUHmdehhYwVUCwV646Eot/27ApQSGsYT",
  render_errors: [view: PhxtrialWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phxtrial.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
