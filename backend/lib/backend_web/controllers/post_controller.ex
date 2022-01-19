defmodule BackendWeb.PostController do
  use BackendWeb, :controller

  alias Backend.Posts

  def index(conn, %{}) do
    posts = Posts.list_photos()
    render(conn, "index.json", posts: posts)
  end

end
