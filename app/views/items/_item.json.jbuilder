json.extract! item, :id, :amount, :name, :restock, :stock_id, :created_at, :updated_at
json.url item_url(item, format: :json)
