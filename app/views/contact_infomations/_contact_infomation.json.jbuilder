json.extract! contact_infomation, :id, :name, :email, :password, :phone_num, :address, :user_type, :created_at, :updated_at
json.url contact_infomation_url(contact_infomation, format: :json)
