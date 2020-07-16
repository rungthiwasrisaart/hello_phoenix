defmodule Streamer.Binance.Depth do
  use WebSockex

  def start_link(url) do
    IO.puts("url #{url}")
    WebSockex.start_link(url, __MODULE__, :nostate)
  end

  def handle_connect(conn, state) do
    IO.puts("Connected!")
    {:ok, state}
  end

  def handle_frame({type, msg}, state) do
    # IO.puts("Received Message - Type: #{inspect(type)} -- Message: #{inspect(msg)}")
    msg
    |> Jason.decode!()
    |> IO.inspect()

    {:ok, state}
  end
end
