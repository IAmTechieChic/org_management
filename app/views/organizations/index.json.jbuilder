json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :employee_size, :since, :location, :zip, :phone, :email
  json.url organization_url(organization, format: :json)
end
