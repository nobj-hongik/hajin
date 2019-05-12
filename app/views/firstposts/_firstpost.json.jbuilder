json.extract! firstpost, :id, :title, :content, :image, :created_at, :updated_at
json.url firstpost_url(firstpost, format: :json)
