json.extract! product, :id, :title, :price, :published, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
