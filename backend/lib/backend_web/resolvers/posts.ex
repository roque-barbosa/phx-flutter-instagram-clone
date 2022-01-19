defmodule BackendWeb.Resolvers.Posts do

  alias Backend.Posts

  def photos(_, _, _) do
  {:ok, Posts.list_photos}
  end

  def photo(_, %{id: id}, _) do
    {:ok, Posts.get_photo!(id)}
  end
end
