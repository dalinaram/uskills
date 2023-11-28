# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

@user = User.create( email: "dalina@gmail.com", name: "dalina", last_name: "lazourt", interest: "algebre", address: "26 rue Richelieu 75001 Paris", rating: 5, teacher: true, password: "123456")

p @user
