defmodule GoodToGrowAppWeb.ReportController do
  use GoodToGrowAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
