json.array!(@products) do |product|
  json.extract! product, :id, :marca, :nome, :medida
  json.url product_url(product, format: :json)
end
