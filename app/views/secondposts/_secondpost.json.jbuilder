json.extract! secondpost, :id, :title, :content, :image, :created_at, :updated_at
json.url secondpost_url(secondpost, format: :json)
