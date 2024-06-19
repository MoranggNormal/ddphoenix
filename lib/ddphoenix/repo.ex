defmodule Ddphoenix.Repo do
  use Ecto.Repo,
    otp_app: :ddphoenix,
    adapter: Ecto.Adapters.Postgres
end
