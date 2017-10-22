defmodule LingerhubWeb.PageController do
  use LingerhubWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
