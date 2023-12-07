Message.destroy_all
Reservation.destroy_all
Review.destroy_all
Skill.destroy_all
User.destroy_all


# Users
dalina = User.create(email: "dalina@gmail.com", name: "Dalina", last_name: "Lazourt", interest: "Algèbre", address: "26 rue Richelieu, 75001 Paris", rating: 5, role: "teach", password: "123456")
dalina.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TPN9LFR8-0a7955ffc05f-512'), filename: 'dalina.jpg')

mahmoud = User.create(email: "mahmoud@gmail.com", name: "Mahmoud", last_name: "Lajimi", interest: "Web Development - Front End", address: "8 rue Abel, 75012 Paris", rating: 5, role: "learn", password: "123456")
mahmoud.photo.attach(io: URI.open('https://media.licdn.com/dms/image/D4E03AQESRl8wIrexZQ/profile-displayphoto-shrink_200_200/0/1695038982453?e=1707350400&v=beta&t=HVGL9mOaAXk5sUxVi3zWHOEAR__mlGgh--S9EHa2DbY'), filename: 'mahmoud.jpg')

ahmed = User.create(email: "ahmed@example.com", name: "Ahmed", last_name: "Salah", interest: "Apprentissage Général", address: "4 rue de Picardie, 75003 Paris", rating: 3, role: "learn", password: "123456")
ahmed.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TLN2HPL5-c8cde0365931-512'), filename: 'ahmed.jpg')

thomas = User.create(email: "thomas@gmail.com", name: "Thomas", last_name: "Traore", interest: "Algèbre", address: "9 rue Argenteuil, 75001 Paris", rating: 4, role: "learn", password: "123456")
thomas.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05UABYTT7A-7ae67a85c0df-512'), filename: 'thomas.jpg')

julia = User.create(email: "julia@example.com", name: "Julia", last_name: "Roberts", interest: "Data Science", address: "10 rue de Rivoli, 75004 Paris", rating: 4, role: "teach", password: "123456")
julia.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgUoLW5Ngr28Qtg-BAQqe87H33X_lbaSUHsTEx3MuDtdd8gaOns0choWMY60QvhW4q0jM&usqp=CAU'), filename: 'julia.jpg')

marc = User.create(email: "marc@example.com", name: "Marc", last_name: "Dupont", interest: "Machine Learning", address: "15 rue Oberkampf, 75011 Paris", rating: 5, role: "learn", password: "123456")
marc.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ4E6F6WTY0AgnUXrwFH3V6vRBzaLSrdNlwQ&usqp=CAU'), filename: 'marc.jpg')
# # Additional demo users
bob = User.create(email: "bob@gmail.com", name: "Bob", last_name: "Marly", interest: "Musique", address: "9 rue Colbert", rating: 5, role: "teach", password: "123456")
bob.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzzk7GzIVNlzDrLiVBmJziqH1RF7bR6HNBEA&usqp=CAU'), filename: 'bob.jpg')

gilson = User.create(email: "gilson@gmail.com", name: "Gilson", last_name: "Silva", interest: "Developpement", address: "30 Faubourg du Temple ", rating: 3, role: "learn", password: "123456")
gilson.photo.attach(io: URI.open('https://ca.slack-edge.com/T02NE0241-U05TJC800S2-e7652ee9132b-512'), filename: 'gilson.jpg')

rahma = User.create(email: "rahma@gmail.com", name: "Rahma", last_name: "chengou", interest: "Java", address: "22 Esplanade Fléchambault", rating: 4, role: "teach", password: "123456")
rahma.photo.attach(io: URI.open('https://i.pinimg.com/736x/05/bd/f3/05bdf34ff4a1525fe3f2fbc0f98563ba.jpg'), filename: 'rahma.jpg')

yeva = User.create(email: "evo@gmail.com", name: " Yeva", last_name: "evo", interest: "Danse", address: "108-110 Quai de Jemmapes", rating: 4, role: "learn", password: "123456")
yeva.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4RlPNO1FFTaywaBn6DHr-ztR1EvecM9Jd-g&usqp=CAU'), filename: 'yeva.jpg')

edward = User.create(email: "edward@gmail.com", name: "Edward", last_name: "Thatch", interest: "Tango", address: "76 rue des Poissonniers ", rating: 5, role: "teach", password: "123456")
edward.photo.attach(io: URI.open('https://source.unsplash.com/random/profil'), filename: 'edward.jpg')

lionel = User.create(email: "messi@gmail.com", name: "Lionel", last_name: "Messi", interest: "Tango", address: "35 Av du Général Leclerc ", rating: 4, role: "learn", password: "123456")
lionel.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREg7tEcYDYhZQpiFF9Sjrfv9VJrnS-0OIMuA&usqp=CAU'), filename: 'lionel.jpg')

celin = User.create(email: "celin@gmail.com", name: "Celin", last_name: "Hidalgo", interest: "Danse", address: "7 Rue des Patriarches, 75005 Paris", rating: 4, role: "teach", password: "123456")
celin.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCO7GTQc-2Tm1-Wjw3ONIv6MNMFq5wyMHDUw&usqp=CAU'), filename: 'celin.jpg')


mamadou = User.create(email: "mamou@gmail.com", name: "Mamadou", last_name: "Traore", interest: "Mathématique", address: "72 avenue Mar Foch 83000 Toulon", rating: 3, role: "learn", password: "123456")
mamadou.photo.attach(io: URI.open('https://source.unsplash.com/random/profil'), filename: 'mamadou.jpg')

amandine = User.create(email: "amandine@gmail.com", name: "Amandinne", last_name: "Salas", interest: "Mathématique", address: "23 Bld des Batignolles", rating: 4, role: "teach", password: "123456")
amandine.photo.attach(io: URI.open('https://www.monatout-rencontres.fr/blog/imgs/astuces-seduire-femme-russe.jpg'), filename: 'amandinne.jpg')

adrian = User.create(email: "mamou@gmail.com", name: "Adrian", last_name: "Barbara", interest: "Mathématique", address: "Localisation ZAE la Grue 5 rue Gustave Eiffel 26120 Chabeuil  ", rating: 2, role: "teach", password: "123456")
adrian.photo.attach(io: URI.open('https://source.unsplash.com/random/profil'), filename: 'adrian.jpg')

son = User.create(email: "son@gmail.com", name: "Son", last_name: "Yang", interest: "Mathématique", address: "Localisation ZAE la Grue 5 rue Gustave Eiffel 26120 Chabeuil  ", rating: 5, role: "teach", password: "123456")
son.photo.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGYg5-oYG4oQgcDWUfn_gdcaOdZlcZxabYA&usqp=CAU'), filename: 'son.jpg')

# # Additional demo users end here


# Messages
Message.create(from_id: thomas.id, to_id: dalina.id, content: "Salut Dalina, je suis intéressé par ton cours d'algèbre.")
Message.create(from_id: ahmed.id, to_id: julia.id, content: "Bonjour Julia, pouvez-vous fournir plus de détails sur votre programme de Science des Données ?")
Message.create(from_id: dalina.id, to_id: thomas.id, content: "Salut Thomas, je suis diponible pour te former sur le cours que tu as choisit pendant les dates tu as selactionnées.")
Message.create(from_id: thomas.id, to_id: dalina.id, content: "Merci beaucoup,j'espère que je serai à la hauteur de votre confiance.")

# Réservations
Reservation.create(teacher: dalina, student: mahmoud, start_date: Date.today, end_date: Date.today + 30)
Reservation.create(teacher: julia, student: thomas, start_date: Date.today, end_date: Date.today + 15)


# Avis
Review.create(teacher_id: dalina.id, student_id: thomas.id, content: "Excellente expérience d'apprentissage !", rating: 5)
Review.create(teacher_id: julia.id, student_id: thomas.id, content: "Hautement recommandé pour quiconque souhaite apprendre la Science des Données.", rating: 5)
Review.create(teacher_id: marc.id, student_id: ahmed.id, content: "Très compétent en apprentissage automatique.", rating: 4)
Review.create(teacher_id: dalina.id, student_id: mahmoud.id, content: "Les cours d'algèbre de Thomas sont très instructifs.", rating: 4)

# Compétences
Skill.create(title: "Algèbre Avancée", description: "Couvre tous les aspects de l'algèbre, y compris les équations linéaires, les équations quadratiques et les structures algébriques.", user: dalina)
Skill.create(title: "Développement Web Front-End", description: "Cours complet sur HTML, CSS, JavaScript et React.", user: mahmoud)
Skill.create(title: "Science des Données", description: "Apprenez les compétences essentielles en Science des Données, y compris l'analyse de données et la visualisation.", user: julia)
Skill.create(title: "Apprentissage Automatique", description: "Découvrez les principes fondamentaux de l'apprentissage automatique.", user: marc)
Skill.create(title: "Mathématiques Discrètes", description: "Explorez les concepts avancés des mathématiques discrètes, y compris les graphes, les arbres et les ensembles.", user: dalina)
Skill.create(title: "Programmation en Python", description: "Maîtrisez la programmation en Python, de l'analyse de données à l'automatisation des tâches.", user: dalina)
Skill.create(title: "Conception d'Interface Utilisateur", description: "Apprenez à concevoir des interfaces utilisateur intuitives et esthétiques pour les applications web et mobiles.", user: julia)
Skill.create(title: "Apprentissage Profond", description: "Plongez dans le monde de l'apprentissage profond avec des cours sur les réseaux de neurones et les architectures avancées.", user: marc)
Skill.create(title: "Analyse Mathématique", description: "Maîtrisez les concepts avancés de l'analyse mathématique.", user: dalina)
Skill.create(title: "Développement Web Full-Stack", description: "Apprenez le développement complet d'applications web, du front-end au back-end.", user: thomas)
Skill.create(title: "Science des Données Avancée", description: "Explorez les techniques avancées d'analyse de données et de machine learning.", user: julia)
Skill.create(title: "Intelligence Artificielle", description: "Plongez dans le monde passionnant de l'intelligence artificielle.", user: marc)
Skill.create(title: "Composition Musicale",description: "Apprenez les fondamentaux de la composition musicale, y compris la théorie musicale, l'harmonie et l'arrangement.",user: bob
)
Skill.create(title: "Mathématiques Discrètes", description: "Explorez les concepts avancés des mathématiques discrètes, y compris les graphes, les arbres et les ensembles.", user: son)

# Skills for Rahma Chengou (Interest: Java)
Skill.create(
  title: "Programmation Java pour Débutants",
  description: "Cours d'introduction à Java, couvrant les bases de la programmation orientée objet, les structures de données et les algorithmes.",
  user: rahma
)

# Skills for Celin Hidalgo (Interest: Danse)
Skill.create(
  title: "Chorégraphie de Danse Contemporaine",
  description: "Explorez les techniques de la danse contemporaine et apprenez à créer vos propres chorégraphies originales.",
  user: celin
)

# Skills for Amandinne Salas (Interest: Mathématique)
Skill.create(
  title: "Théorie des Nombres",
  description: "Découvrez les concepts fascinants de la théorie des nombres, y compris la divisibilité, les nombres premiers, et les congruences.",
  user: amandine
)

# Skills for Edward Thatch (Interest: Tango)
Skill.create(
  title: "Histoire et Techniques du Tango",
  description: "Plongez dans l'histoire du Tango, apprenez ses mouvements de base et explorez son évolution culturelle.",
  user: edward
)

# Skills for Lionel Messi (Interest: Tango)
Skill.create(
  title: "Tango Argentin pour Intermédiaires",
  description: "Perfectionnez votre technique de Tango Argentin, avec un focus sur l'interprétation musicale et la connexion en couple.",
  user: lionel
)

puts "Données de départ créées avec succès!"
