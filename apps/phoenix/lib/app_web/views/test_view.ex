defmodule AppWeb.TestView do
  use AppWeb, :view
  alias AppWeb.TestView

  def render("test.json", %{test: test}) do
    %{ name: test.name, role: test.role }
  end
end
