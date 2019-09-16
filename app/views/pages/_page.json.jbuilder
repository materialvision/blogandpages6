json.extract! page, :id, :title, :content, :importance, :clouded, :created_at, :updated_at
json.url page_url(page, format: :json)
