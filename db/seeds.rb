Message.destroy_all
Reservation.destroy_all
Review.destroy_all
Skill.destroy_all
User.destroy_all

# Utilisateurs
dalina = User.create(email: "dalina@gmail.com", name: "Dalina", last_name: "Lazourt", interest: "Algèbre", address: "26 rue Richelieu, 75001 Paris", rating: 5, role: "teach", password: "123456")
dalina.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696253397/izabhb7pb8ripvuz23vt.jpg'), filename: 'dalina.jpg')

mahmoud = User.create(email: "mahmoud@gmail.com", name: "Mahmoud", last_name: "Lajimi", interest: "Développement Web - Front End", address: "8 rue Abel, 75012 Paris", rating: 5, role: "learn", password: "123456")
mahmoud.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/130217659?v=4'), filename: 'mahmoud.jpg')

ahmed = User.create(email: "ahmed@example.com", name: "Ahmed", last_name: "Salah", interest: "Apprentissage Général", address: "4 rue de Picardie, 75003 Paris", rating: 3, role: "learn", password: "123456")
ahmed.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1696316403/o8gen8r5pqrxgqghpdh5.jpg'), filename: 'ahmed.jpg')

thomas = User.create(email: "thomas@gmail.com", name: "Thomas", last_name: "Traore", interest: "Algèbre", address: "9 rue Argenteuil, 75001 Paris", rating: 4, role: "teach", password: "123456")
thomas.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1701000775/dr4uem7oec4hk9vysy9y.jpg'), filename: 'thomas.jpg')

julia = User.create(email: "julia@example.com", name: "Julia", last_name: "Roberts", interest: "Science des Données", address: "10 rue de Rivoli, 75004 Paris", rating: 4, role: "teach", password: "123456")
julia.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/63111765?v=4'), filename: 'julia.jpg')

marc = User.create(email: "marc@example.com", name: "Marc", last_name: "Dupont", interest: "Apprentissage Automatique", address: "15 rue Oberkampf, 75011 Paris", rating: 5, role: "teach", password: "123456")
marc.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/145837598?v=4'), filename: 'marc.jpg')

# Messages
Message.create(from_id: mahmoud.id, to_id: dalina.id, content: "Salut Dalina, je suis intéressé par ton cours d'algèbre.")
Message.create(from_id: ahmed.id, to_id: julia.id, content: "Bonjour Julia, pouvez-vous fournir plus de détails sur votre programme de Science des Données ?")

# Réservations
Reservation.create(teacher: dalina, student: mahmoud, start_date: Date.today, end_date: Date.today + 30)
Reservation.create(teacher: julia, student: thomas, start_date: Date.today, end_date: Date.today + 15)

# Avis
Review.create(teacher_id: dalina.id, student_id: thomas.id, content: "Excellente expérience d'apprentissage !", rating: 5)
Review.create(teacher_id: julia.id, student_id: thomas.id, content: "Hautement recommandé pour quiconque souhaite apprendre la Science des Données.", rating: 5)
Review.create(teacher_id: marc.id, student_id: ahmed.id, content: "Très compétent en apprentissage automatique.", rating: 4)
Review.create(teacher_id: thomas.id, student_id: mahmoud.id, content: "Les cours d'algèbre de Thomas sont très instructifs.", rating: 4)

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

puts "Données de départ créées avec succès!"
