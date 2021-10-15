defmodule ScaleApiGraphql.Resolvers.PickingResolver  do
  def create_picking(_parent, args, _resolutions) do
    IO.inspect(args)
    # %{
    #   products: [
    #     %{product: "123", stores: ["123", "123123"]},
    #     %{product: "123", stores: ["123", "123123"]}
    #   ]
    # }
    {:ok, "We received the payload, and we are going to create all orders!"}
  end
end
