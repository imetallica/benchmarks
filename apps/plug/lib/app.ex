defmodule App do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, response())
  end

  def response do
    Jason.encode!(%{
      "name" => "Thiago Henrique",
      "role" => "Nerd of IT"
    })
  end
end
