defmodule CiConnectTest.Repo do
  use Ecto.Repo,
    otp_app: :ci_connect_test,
    adapter: Ecto.Adapters.Postgres
end
