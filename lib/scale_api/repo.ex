defmodule ScaleApi.Repo do
  use Ecto.Repo,
    otp_app: :scale_api,
    adapter: Ecto.Adapters.Postgres
end
