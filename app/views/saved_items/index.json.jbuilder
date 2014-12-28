json.array!(@saved_items) do |saved_item|
  json.extract! saved_item, :id, :item_id
  json.url saved_item_url(saved_item, format: :json)
end
