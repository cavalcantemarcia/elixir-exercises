defmodule GeneralStore do
  def filter_items([], _), do: []
  def filter_items([item = %{magic: magic_value} | incoming_items], magic: magic_filter)
  when magic_value == magic_filter do
    [item | filter_items(incoming_items, magic: magic_filter)]
  end
  def filter_items([_item | incoming_items], magic) do
    filter_items(incoming_items, magic)
  end
end

x = [%{title: "Healing Potion", price: 60, magic: true}, %{title: "Dragon's Spear", price: 100, magic: false}]

return_message = GeneralStore.filter_items(x, magic: true)

IO.inspect(return_message)
