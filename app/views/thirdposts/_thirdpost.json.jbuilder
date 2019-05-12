json.extract! thirdpost, :id, :title, :content, :image, :created_at, :updated_at
json.url thirdpost_url(thirdpost, format: :json)
