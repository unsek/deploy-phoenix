defmodule PhoenixHello.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_hello,
    adapter: Ecto.Adapters.Postgres,
    pool_size: 10

    def init(_type, config) do
      {:ok, Keyword.put(config, :url, System.fetch_env!("DATABASE_URL"))}
    end
end
