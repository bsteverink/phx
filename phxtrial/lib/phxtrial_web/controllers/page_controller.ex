defmodule PhxtrialWeb.PageController do
  use PhxtrialWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
