defmodule App do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, response())
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

  def response do
    Jason.encode!(%{
      "name" => "Thiago Henrique",
      "role" => "Nerd of IT"
    })
  end
end
