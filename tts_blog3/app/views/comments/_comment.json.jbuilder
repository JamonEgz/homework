json.extract! comment, :id, :author, :comment_entry, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
