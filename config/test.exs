import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :ci_connect_test, CiConnectTest.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ci_connect_test_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ci_connect_test, CiConnectTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  debug_errors: true,
  secret_key_base: "T0MX4k9Byj74ytb2pPvXBljkZgzNiu/Tyy3Wrqh5tLZT5sLfNksPR5CmDO2LnczR",
  server: true

# In test we don't send emails.
config :ci_connect_test, CiConnectTest.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
