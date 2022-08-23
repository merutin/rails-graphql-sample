json.extract! micropost_detail, :id, :content, :micropost_id, :created_at, :updated_at
json.url micropost_detail_url(micropost_detail, format: :json)
