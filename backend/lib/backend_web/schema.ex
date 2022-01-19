defmodule BackendWeb.Schema do
  use Absinthe.Schema

  alias BackendWeb.Resolvers

  import_types __MODULE__.PostsTypes

  query do
    @desc "Get a list of photos"
    field :photos, list_of(:photo) do
      resolve &Resolvers.Posts.photos/3
    end

    @desc "Get a photo by id"
    field :photo, :photo do
      arg :id, non_null(:id)
      resolve &Resolvers.Posts.photo/3
    end

  end
end
