defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    IO.puts(messenger)
    render(conn, "show.html", messenger: messenger)
  end
end
