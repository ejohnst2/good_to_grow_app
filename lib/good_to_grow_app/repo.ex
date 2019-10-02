defmodule GoodToGrowApp.Repo do
  use Ecto.Repo,
    otp_app: :good_to_grow_app,
    adapter: Ecto.Adapters.Postgres
end
