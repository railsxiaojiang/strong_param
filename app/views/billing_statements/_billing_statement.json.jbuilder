json.extract! billing_statement, :id, :user_id, :title, :created_at, :updated_at
json.url billing_statement_url(billing_statement, format: :json)
