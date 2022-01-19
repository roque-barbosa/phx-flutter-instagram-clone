defmodule BackendWeb.Router do
  use BackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    get "/", BackendWeb.PostController, :index

    forward "/graphql", Absinthe.Plug, schema: BackendWeb.Schema



    if Mix.env == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL, schema: BackendWeb.Schema
    end
  end
end
