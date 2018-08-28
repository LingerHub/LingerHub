defmodule LingerhubWeb.PageControllerTest do
  use LingerhubWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 201) =~ "Welcome to Phoenix!"
  end
end
