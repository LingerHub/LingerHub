use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lingerhub, LingerhubWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :lingerhub, Lingerhub.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "lingerhub_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Override configuration locally
case File.exists?("config/test.secret.exs") do
  true -> import_config "test.secret.exs"
  false -> nil
end

