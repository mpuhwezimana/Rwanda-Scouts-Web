json.extract! contact, :id, :name, :image, :position, :address, :phone, :facebook, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)