json.extract! feedback, :id, :description, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
