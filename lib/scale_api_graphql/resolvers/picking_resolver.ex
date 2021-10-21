defmodule ScaleApiGraphql.Resolvers.PickingResolver do
  alias ScaleApi.Pickings

  def create_picking(_parent, args, _resolutions) do
    Task.async(fn -> Pickings.create_picking(args) end)
    {:ok, "We received the payload, and we are going to create all orders!"}
  end
end
