json.extract! image, :id, :image, :image_title, :image_file_size, :image_content_type, :image_description, :category_id, :created_at, :updated_at
json.url image_url(image, format: :json)
