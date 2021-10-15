defmodule ScaleApiGraphql.Schema.Picking do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema.Notation, :classic
  alias ScaleApiGraphql.Resolvers

  object :picking_mutations do
    @desc "Create Picking"
    field :create_picking, :string do
      arg(:products, list_of(non_null(:product_input)))
      resolve(&Resolvers.PickingResolver.create_picking/3)
    end
  end

  input_object :product_input do
    field :product, non_null(:string)
    field :stores, list_of(non_null(:string))
  end
end
