defmodule ScaleApiGraphql.Schema do
  use Absinthe.Schema
  use Absinthe.Relay.Schema, :classic

  import_types(ScaleApiGraphql.Schema.Picking)

  @desc "The root of query operations"
  query do
  end

  @desc "The root of mutation operations"
  mutation do
    import_fields(:picking_mutations)
  end
end
