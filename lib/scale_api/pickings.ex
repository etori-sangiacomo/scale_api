defmodule ScaleApi.Pickings do
  alias ScaleApi.Pickings.Core.SendProductsToKafka

  def create_picking(products) do
    SendProductsToKafka.execute(products)
  end
end
