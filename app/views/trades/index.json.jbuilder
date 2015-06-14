json.array!(@trades) do |trade|
  json.extract! trade, :id, :name, :exchange_type, :agent_id, :place_id, :comment
  json.url trade_url(trade, format: :json)
end
