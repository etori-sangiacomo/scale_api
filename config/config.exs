# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :scale_api,
  ecto_repos: [ScaleApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :scale_api, ScaleApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wU1vWoLmd/7YtT7IPYmKsrqAo62dvGH9XkZU3wyrxcNapD8TlRedn12QrXK4KkR0",
  render_errors: [view: ScaleApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ScaleApi.PubSub,
  live_view: [signing_salt: "WOg0v2Ly"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
