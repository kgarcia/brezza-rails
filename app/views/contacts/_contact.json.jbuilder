json.extract! contact, :id, :description, :name, :address, :phone, :twitter, :facebook, :instagram, :created_at, :updated_at
json.url contact_url(contact, format: :json)
