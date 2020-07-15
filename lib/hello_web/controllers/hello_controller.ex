defmodule HelloWeb.HelloController do
  use HelloWeb, :controller
  plug HelloWeb.Plugs.Locale, "en" when action in [:index]

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    # render(conn, "show.html", messenger: messenger)

    conn
    |> assign(:messenger, messenger)
    |> assign(:receiver, "Dweezil")
    |> render("show.html")
  end
end
