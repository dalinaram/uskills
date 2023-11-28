# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

@user = User.create( email: "dalina@gmail.com", name: "dalina", last_name: "lazourt", interest: "algebre", address: "26 rue Richelieu 75001 Paris", rating: 5, role: "teach", password: "123456")
@user = User.create( email: "mahmoud@gmail.com", name: "lajimi", last_name: "mahmoud", interest: "web dev Front End", address: "8 rue Abel 75012 Paris", rating: 5, role: "learn", password: "123456")
@user = User.create( email: "ahmed@gmail.com", name: "ahmed", last_name: "saleh", interest: "learning", address: "4 rue de Picardie 75003 Paris", rating: 3, role: "learn", password: "123456")
@user = User.create( email: "thomas@gmail.com", name: "thomas", last_name: "traore", interest: "algebre", address: "9 rue Argenteuil 75001 Paris ", rating: 4, role: "learn", password: "123456")
# p @user
