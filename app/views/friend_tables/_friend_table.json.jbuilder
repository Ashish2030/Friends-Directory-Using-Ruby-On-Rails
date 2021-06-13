json.extract! friend_table, :id, :first_name, :email, :phone, :created_at, :updated_at
json.url friend_table_url(friend_table, format: :json)
