defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
    # conn
    # |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    # |> put_flash(:error, "Let's pretend we have an error.")
    # |> redirect(to: Routes.page_path(conn, :redirect_test))
  end

  @spec redirect_test(Plug.Conn.t(), any) :: Plug.Conn.t()
  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
