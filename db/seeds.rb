# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Criando um usuário
#User.create(username: "admin", email: "your_email@email.com", password: "admin")

Supermarket.create([
	{nome: "Extra", endereco: "Avenida Epitacio Pessoa, 1277"},
	{nome: "Mendonça", endereco: "Rua Expedito Belmiro Santos, Grotão"},
	{nome: "Assaí", endereco: "Rua Diógenes Chianca, s/n - Água Fria"}
])

Product.create([
	{marca: "Dove", nome: "Sabonete", medida: "90g"},
	{marca: "Urbano", nome: "Feijão Carioca", medida: "1kg"},
	{marca: "Quero", nome: "Extrato de Tomate", medida: "340g"},
	{marca: "Barla", nome: "Talco", medida: "140g"},
	{marca: "Italac", nome: "Bebica Láctea Chocolate", medida: "200ml"},
	{marca: "Colgate", nome: "Creme Dental", medida: "90g"},
])

Sale.create([
	{supermarket_id: 2, product_id: 1, current_price: 1.85},
	{supermarket_id: 2, product_id: 2, current_price: 3.49},
	{supermarket_id: 2, product_id: 3, current_price: 1.35},
	{supermarket_id: 2, product_id: 4, current_price: 3.95},
	{supermarket_id: 2, product_id: 5, current_price: 0.65},
	{supermarket_id: 2, product_id: 6, current_price: 1.35},
	{supermarket_id: 1, product_id: 1, current_price: 1.95},
	{supermarket_id: 3, product_id: 1, current_price: 1.80},
	{supermarket_id: 3, product_id: 2, current_price: 3.65},
])