# Clear existing data
Message.destroy_all
Reservation.destroy_all
Review.destroy_all
Skill.destroy_all
User.destroy_all
# Users
dalina = User.create(email: "dalina@gmail.com", name: "Dalina", last_name: "Lazourt", interest: "Algebra", address: "26 rue Richelieu, 75001 Paris", rating: 5, role: "teach", password: "123456")
mahmoud = User.create(email: "mahmoud@gmail.com", name: "Mahmoud", last_name: "Lajimi", interest: "Web Development - Front End", address: "8 rue Abel, 75012 Paris", rating: 5, role: "learn", password: "123456")
ahmed = User.create(email: " ", name: "Ahmed", last_name: "Salah", interest: "General Learning", address: "4 rue de Picardie, 75003 Paris", rating: 3, role: "learn", password: "123456")
thomas = User.create(email: "thomas@gmail.com", name: "Thomas", last_name: "Traore", interest: "Algebra", address: "9 rue Argenteuil, 75001 Paris", rating: 4, role: "learn", password: "123456")

# Additional demo users
julia = User.create(email: "julia@example.com", name: "Julia", last_name: "Roberts", interest: "Data Science", address: "10 rue de Rivoli, 75004 Paris", rating: 4, role: "teach", password: "123456")
marc = User.create(email: "marc@example.com", name: "Marc", last_name: "Dupont", interest: "Machine Learning", address: "15 rue Oberkampf, 75011 Paris", rating: 5, role: "learn", password: "123456")

# Messages
Message.create(student: mahmoud, teacher: dalina, content: "Hi Dalina, I'm interested in your Algebra course.")
Message.create(student: ahmed, teacher: julia, content: "Hello Julia, can you provide more details about your Data Science program?")

# Reservations
Reservation.create(teacher: dalina, student: mahmoud, start_date: Date.today, end_date: Date.today + 30)
Reservation.create(teacher: julia, student: thomas, start_date: Date.today, end_date: Date.today + 15)

# Reviews
Review.create(user: dalina, content: "Great learning experience!", rating: 5)
Review.create(user: julia, content: "Highly recommended for anyone looking to learn Data Science.", rating: 5)

# Skills
Skill.create(title: "Advanced Algebra", description: "Covering all aspects of Algebra including linear equations, quadratic equations, and algebraic structures.", user: dalina)
Skill.create(title: "Front-End Web Development", description: "Comprehensive course on HTML, CSS, JavaScript, and React.", user: mahmoud)

puts "Seeds created successfully!"
