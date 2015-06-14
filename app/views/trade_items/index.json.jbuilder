json.array!(@trade_items) do |trade_item|
  json.extract! trade_item, :id, :number, :item_id
  json.url trade_item_url(trade_item, format: :json)
end
