defmodule ScaleApiWeb.Router do
  use ScaleApiWeb, :router

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  # scope "/api", ScaleApiWeb do
  #   pipe_through :api
  # end

  scope "/" do
    forward "/graphql", Absinthe.Plug, schema: ScaleApiGraphql.Schema, json_code: Jason
  end
end
