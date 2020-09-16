json.extract! creditcard, :id, :name, :card_num, :experation_date, :cvv, :created_at, :updated_at
json.url creditcard_url(creditcard, format: :json)
