defmodule BackendWeb.PostView do
  use BackendWeb, :view
  alias BackendWeb.PostView

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, PostView, "test.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PostView, "test.json")}
  end

  def render("test.json", %{post: post}) do
    %{caption: post.caption}
  end
end
