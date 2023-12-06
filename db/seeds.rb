
Message.destroy_all
Reservation.destroy_all
Review.destroy_all
Skill.destroy_all

 User.destroy_all

# Users
dalina = User.create(email: "dalina@gmail.com", name: "Dalina", last_name: "Lazourt", interest: "Algebra", address: "26 rue Richelieu, 75001 Paris", rating: 5, role: "teach", password: "123456")
dalina.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TPN9LFR8-0a7955ffc05f-512'), filename: 'dalina.jpg')

mahmoud = User.create(email: "mahmoud@gmail.com", name: "Mahmoud", last_name: "Lajimi", interest: "Web Development - Front End", address: "8 rue Abel, 75012 Paris", rating: 5, role: "learn", password: "123456")
mahmoud.photo.attach(io: URI.open('https://media.licdn.com/dms/image/D4E03AQESRl8wIrexZQ/profile-displayphoto-shrink_200_200/0/1695038982453?e=1707350400&v=beta&t=HVGL9mOaAXk5sUxVi3zWHOEAR__mlGgh--S9EHa2DbY'), filename: 'mahmoud.jpg')

ahmed = User.create(email: "ahmed@example.com", name: "Ahmed", last_name: "Salah", interest: "General Learning", address: "4 rue de Picardie, 75003 Paris", rating: 3, role: "learn", password: "123456")
ahmed.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TLN2HPL5-c8cde0365931-512'), filename: 'ahmed.jpg')

thomas = User.create(email: "thomas@gmail.com", name: "Thomas", last_name: "Traore", interest: "Algebra", address: "9 rue Argenteuil, 75001 Paris", rating: 4, role: "learn", password: "123456")
thomas.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05UABYTT7A-7ae67a85c0df-512'), filename: 'thomas.jpg')

julia = User.create(email: "julia@example.com", name: "Julia", last_name: "Roberts", interest: "Data Science", address: "10 rue de Rivoli, 75004 Paris", rating: 4, role: "teach", password: "123456")
julia.photo.attach(io: URI.open('https://www.beziehungsratgeber.net/wp-content/uploads/2018/05/Wie-verliebt-sich-ein-Mann-in-mich-Interview-mit-einem-Experten.jpg'), filename: 'julia.jpg')

marc = User.create(email: "marc@example.com", name: "Marc", last_name: "Dupont", interest: "Machine Learning", address: "15 rue Oberkampf, 75011 Paris", rating: 5, role: "learn", password: "123456")
marc.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ4E6F6WTY0AgnUXrwFH3V6vRBzaLSrdNlwQ&usqp=CAU'), filename: 'marc.jpg')
# # Additional demo users
bob = User.create(email: "bob@gmail.com", name: "Bob", last_name: "Marly", interest: "Music", address: "9 rue Colbert", rating: 5, role: "teach", password: "123456")
bob.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzzk7GzIVNlzDrLiVBmJziqH1RF7bR6HNBEA&usqp=CAU'), filename: 'bob.jpg')

gilson = User.create(email: "gilson@gmail.com", name: "Gilson", last_name: "Silva", interest: "Developpement", address: "30 Faubourg du Temple ", rating: 3, role: "learn", password: "123456")
gilson.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TJC800S2-e7652ee9132b-512'), filename: 'gilson.jpg')

rahma = User.create(email: "rahma@gmail.com", name: "Rahma", last_name: "chengou", interest: "Java", address: "22 Esplanade Fléchambault", rating: 4, role: "teach", password: "123456")
rahma.photo.attach(io: URI.open('https://i.pinimg.com/736x/05/bd/f3/05bdf34ff4a1525fe3f2fbc0f98563ba.jpg'), filename: 'rahma.jpg')

yeva = User.create(email: "evo@gmail.com", name: " Yeva", last_name: "evo", interest: "Dance", address: "108-110 Quai de Jemmapes", rating: 4, role: "learn", password: "123456")
yeva.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4RlPNO1FFTaywaBn6DHr-ztR1EvecM9Jd-g&usqp=CAU'), filename: 'yeva.jpg')

edward = User.create(email: "edward@gmail.com", name: "Edward", last_name: "Thatch", interest: "Tango", address: "76 rue des Poissonniers ", rating: 5, role: "teach", password: "123456")
edward.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEURhShsAArs6R8167q2DmI8brxZPMW8eV2g&usqp=CAU'), filename: 'edward.jpg')

lionel = User.create(email: "messi@gmail.com", name: "Lionel", last_name: "Messi", interest: "Tango", address: "35 Av du Général Leclerc ", rating: 4, role: "learn", password: "123456")
lionel.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREg7tEcYDYhZQpiFF9Sjrfv9VJrnS-0OIMuA&usqp=CAU'), filename: 'lionel.jpg')

celin = User.create(email: "celin@gmail.com", name: "Celin", last_name: "Hidalgo", interest: "Dance", address: "7 Rue des Patriarches, 75005 Paris", rating: 4, role: "teach", password: "123456")
celin.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCO7GTQc-2Tm1-Wjw3ONIv6MNMFq5wyMHDUw&usqp=CAU'), filename: 'celin.jpg')

amandine = User.create(email: "amandine@gmail.com", name: "Amandinne", last_name: "Salas", interest: "mathematique", address: "23 Bld des Batignolles", rating: 4, role: "teach", password: "123456")
amandine.photo.attach(io: URI.open('https://www.monatout-rencontres.fr/blog/imgs/astuces-seduire-femme-russe.jpg'), filename: 'amandinne.jpg')


mamadou = User.create(email: "mamou@gmail.com", name: "Mamadou", last_name: "Traore", interest: "mathematique", address: "23 Bld des Batignolles", rating: 4, role: "learn", password: "123456")
mamadou.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRTywUpf0heMUICLMtVXqpA9kjuXfVcrH81w&usqp=CAU'), filename: 'mamadou.jpg')
# # Additional demo users end here






# Messages
Message.create(from_id: mahmoud.id, to_id: dalina.id, content: "Hi Dalina, I'm interested in your Algebra course.")
Message.create(from_id: ahmed.id, to_id: julia.id, content: "Hello Julia, can you provide more details about your Data Science program?")

# Reservations
Reservation.create(teacher: dalina, student: mahmoud, start_date: Date.today, end_date: Date.today + 30)
Reservation.create(teacher: julia, student: thomas, start_date: Date.today, end_date: Date.today + 15)

# Reviews
Review.create(teacher_id: dalina.id, student_id: thomas.id, content: "Great learning experience!", rating: 5)
Review.create(teacher_id: julia.id,student_id: thomas.id, content: "Highly recommended for anyone looking to learn Data Science.", rating: 5)

# Skills
Skill.create(title: "Advanced Algebra", description: "Covering all aspects of Algebra including linear equations, quadratic equations, and algebraic structures.", user: dalina)
Skill.create(title: "Front-End Web Development", description: "Comprehensive course on HTML, CSS, JavaScript, and React.", user: mahmoud)
Skill.create(title: "Advanced Java", description: "Développement d'applications. Créez, gérez et distribuez en continu des applications cloud, en utilisant la plateforme ou le langage de votre choix.", user: rahma)
Skill.create(title: "Tango", description: "Le tango est une danse de bal qui se danse à deux. C'est aujourd'hui une danse d'improvisation, au sens où les pas ne sont pas fixés à l'avance pour être répétés séquentiellement, mais où les deux partenaires marchent ensemble vers une direction impromptue à chaque instant.", user: edward)



puts "Seeds created successfully!"
