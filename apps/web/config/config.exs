# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :web,
  namespace: Web,
  ecto_repos: [Web.Repo]

# Configures the endpoint
config :web, WebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TStZ2vCnPBDbXmSGU7Ixu2k5uSW1KMyuRIAFQcjCMuMaYjW7u4NDeM/+l+6T8LKW",
  render_errors: [view: WebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Web.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
