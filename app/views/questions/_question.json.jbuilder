json.extract! question, :id, :query, :body, :created_at, :updated_at
json.url question_url(question, format: :json)
