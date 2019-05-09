defmodule Phxtrial.Repo do
  use Ecto.Repo,
    otp_app: :phxtrial,
    adapter: Ecto.Adapters.Postgres
end
