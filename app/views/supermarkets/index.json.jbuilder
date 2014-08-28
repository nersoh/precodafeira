json.array!(@supermarkets) do |supermarket|
  json.extract! supermarket, :id, :nome, :endereco
  json.url supermarket_url(supermarket, format: :json)
end
