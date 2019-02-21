defmodule AppWeb.TestController do
  use AppWeb, :controller

  alias App.Tests
  alias App.Tests.Test

  action_fallback AppWeb.FallbackController

  def index(conn, _params) do
    render(conn, "test.json", test: %{
      name: "Thiago Henrique",
      role: "Nerd of IT"
    })
  end
end
