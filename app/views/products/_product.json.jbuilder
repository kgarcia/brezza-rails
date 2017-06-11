json.extract! product, :id, :name, :description, :detail, :author, :category_id, :amount, :pictures, :created_at, :updated_at
json.url product_url(product, format: :json)
