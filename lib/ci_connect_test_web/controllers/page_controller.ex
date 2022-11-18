defmodule CiConnectTestWeb.PageController do
  use CiConnectTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
