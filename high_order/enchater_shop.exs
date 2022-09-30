defmodule EnchanterShop do
  def increase_price(items) do
    increase_price = fn
      %{magic: true} = item -> item
      %{magic: false} = item -> %{item | price: item.price * 1.1, magic: true} end

    Enum.map(items, increase_price)
  end

end

x = [%{title: "Healing Potion", price: 60, magic: true}, %{title: "Dragon's Spear", price: 100, magic: false}]

return_message = EnchanterShop.increase_price(x)

IO.inspect(return_message)
