# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Example:
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Event.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating users...'

user1 = User.create!(
  email: 'Ahmed@example.com',
  password: 'password123',
  first_name: 'Ahmed',
  last_name: 'Salhi',
  birth_date: '1927-01-01',
  description: 'Je suis un utilisateur',
  city: 'Tours',
  creator: false
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'password123',
  first_name: 'Daenerys',
  last_name: 'Targaryen',
  birth_date: '1925-01-01',
  description: 'Queen of the Andals',
  city: 'Amsterdam',
  creator: false
)

user3 = User.create!(
  email: 'user3@example.com',
  password: 'password123',
  first_name: 'Lucy',
  last_name: 'Liu',
  birth_date: '1928-01-01',
  description: 'Cool chick',
  city: 'Paris',
  creator: false
)

user4 = User.create!(
  email: 'user4@example.com',
  password: 'password123',
  first_name: 'Natalie',
  last_name: 'Portman',
  birth_date: '1935-01-01',
  description: 'The best',
  city: 'Nantes',
  creator: false
)

user5 = User.create!(
  email: 'user5@example.com',
  password: 'password123',
  first_name: 'John',
  last_name: 'Doe',
  birth_date: '1927-01-01',
  description: 'I am a user',
  city: 'Nantes',
  creator: false
)

user6 = User.create!(
  email: 'user6@example.com',
  password: 'password123',
  first_name: 'Jane',
  last_name: 'Doe',
  birth_date: '1927-01-01',
  description: 'J\'aime les chats',
  city: 'Nantes',
  creator: false
)

puts 'Creating categories...'

cuisine = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790375/cooking_alc3pk.jpg")
categoryCuisine = Category.new(name: "cuisine")
categoryCuisine.photo.attach(io: cuisine, filename: "cuisine.jpg", content_type: "image/png")
categoryCuisine.save

lecture = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790375/lecture_gdpj9y.jpg")
categoryLecture = Category.new(name: "lecture")
categoryLecture.photo.attach(io: lecture, filename: "lecture.jpg", content_type: "image/png")
categoryLecture.save

artisanat = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790373/artisanat_vkncac.jpg")
categoryArtisanat = Category.new(name: "artisanat")
categoryArtisanat.photo.attach(io: artisanat, filename: "artisanat.jpg", content_type: "image/png")
categoryArtisanat.save

yoga = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790374/yoga_xqfqlq.jpg")
categoryYoga = Category.new(name: "yoga")
categoryYoga.photo.attach(io: yoga, filename: "yoga.jpg", content_type: "image/png")
categoryYoga.save

randonnee = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790375/randonnee_r2fuih.jpg")
categoryRandonnee = Category.new(name: "randonnee")
categoryRandonnee.photo.attach(io: randonnee, filename: "randonnee.jpg", content_type: "image/png")
categoryRandonnee.save

langues = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790374/langues_guuohj.jpg")
categoryLangues = Category.new(name: "langues")
categoryLangues.photo.attach(io: langues, filename: "langues.jpg", content_type: "image/png")
categoryLangues.save

photographie = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790375/photographie_q1veno.jpg")
categoryPhotographie = Category.new(name: "photographie")
categoryPhotographie.photo.attach(io: photographie, filename: "photographie.jpg", content_type: "image/png")
categoryPhotographie.save

danse = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790374/danse_itrbzi.jpg")
categoryDanse = Category.new(name: "danse")
categoryDanse.photo.attach(io: danse, filename: "danse.jpg", content_type: "image/png")
categoryDanse.save

concert = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790375/concerts_im9lfd.jpg")
categoryConcert = Category.new(name: "concert")
categoryConcert.photo.attach(io: concert, filename: "concert.jpg", content_type: "image/png")
categoryConcert.save

theatre = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790373/theatre_acgppx.jpg")
categoryTheatre = Category.new(name: "theatre")
categoryTheatre.photo.attach(io: theatre, filename: "theatre.jpg", content_type: "image/png")
categoryTheatre.save

cinema = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790373/cinema_qnpyyh.jpg")
categoryCinema = Category.new(name: "cinema")
categoryCinema.photo.attach(io: cinema, filename: "cinema.jpg", content_type: "image/png")
categoryCinema.save

sport = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/c_scale,w_1000/v1701790376/sport_qo5lej.jpg")
categorySport = Category.new(name: "sport")
categorySport.photo.attach(io: sport, filename: "sport.jpg", content_type: "image/png")
categorySport.save

puts 'Creating events...'

Event.create!(
  title: 'Séance de pilates avec la coach Stéphanie Martin',
  short_description: "Découvrez l'Équilibre et la Force Intérieure avec Stéphanie Martin et son cours de Pilates exceptionnel !",
  long_description: "Rejoignez-nous pour une expérience unique de bien-être et de renforcement musculaire avec le cours de Pilates animé par la talentueuse coach Stéphanie Martin.

  Plongez dans une séance de fitness qui allie précision, contrôle et fluidité, vous permettant de retrouver l'harmonie entre votre esprit et votre corps.

  À Propos de Stéphanie Martin

  Stéphanie est une coach certifiée de Pilates, passionnée par l'équilibre entre le corps et l'esprit.

  Avec des années d'expérience dans l'industrie du fitness, elle guide ses élèves avec une approche attentionnée et personnalisée, favorisant le développement de la force physique et mentale.

  Ce que vous pouvez attendre :
  renforcement musculaire : les exercices ciblés de Pilates tonifieront et renforceront vos muscles profonds, améliorant ainsi votre posture globale.
  flexibilité et mobilité : les mouvements contrôlés améliorent la flexibilité, favorisant une amplitude de mouvement accrue et une meilleure mobilité articulaire.
  bien-être mental : les principes de respiration et de concentration propres au Pilates vous aideront à atteindre un état de calme intérieur, réduisant le stress quotidien.

  Inscrivez-vous dès maintenant !

  Ne manquez pas cette opportunité de transformer votre corps et votre esprit avec Stéphanie Martin.

  Les places sont limitées, alors assurez-vous de réserver la vôtre dès maintenant.

  Nous avons hâte de vous accueillir!",
  address: "15 route de l'Atlantique",
  city: 'Nantes',
  event_date: '2023-08-12',
  limit_participants: 10,
  user: user1,
  category: categoryArtisanat
)

Event.create!(
  title: 'Cours de cuisine avec le chef étoilé Jean-Pierre Gauthier',
  short_description: 'Découvrez les secrets de la cuisine française avec le chef étoilé Jean-Pierre Gauthier',
  long_description: "Plongez dans l'univers exquis de la gastronomie française lors d'un cours de cuisine exclusif animé par le renommé chef étoilé, Jean-Pierre Gauthier. Cet événement captivant vous offre une opportunité exceptionnelle d'explorer les secrets culinaires de la haute cuisine française tout en vivant une expérience sensorielle inoubliable.

  Au cœur d'un cadre pittoresque, dans les cuisines élégantes de l'Académie de Cuisine Parisienne, le chef Gauthier vous guide à travers un voyage culinaire envoûtant. Avec sa passion contagieuse pour les saveurs authentiques et les techniques innovantes, le chef Gauthier partagera ses précieux conseils, ses astuces de chef étoilé et ses recettes raffinées, dévoilant les nuances subtiles de la cuisine française traditionnelle.",
  address: '10 passage de la poule noire',
  city: 'Nantes',
  event_date: '2023-02-12',
  limit_participants: 5,
  user: user2,
  category: categoryCinema
)

Event.create!(
  title: "Cours de yoga Harmonie et Sérénité",
  short_description: "Découvrez l\'harmonie et la sérénité avec le cours de yoga de la coach certifiée, Marie-Louise",
  long_description: "Plongez dans un havre de paix intérieure lors de notre cours de yoga Harmonie et Sérénité. Venez découvrir une pratique du yoga qui va au-delà de la simple activité physique pour embrasser une approche holistique du bien-être mental, physique et spirituel.

  Dans un cadre accueillant et relaxant, notre cours offre bien plus qu\'une série de postures. Nos instructeurs expérimentés, imprégnés de la philosophie ancienne du yoga, vous guideront à travers des séquences de postures fluides, des exercices de respiration profonde et de méditation, vous permettant d\'explorer les dimensions les plus profondes de vous-même.",
  address: "10 Bouevard Berangers",
  city: 'Tours',
  event_date: '2023-01-12',
  limit_participants: 18,
  user: user3,
  category: categoryLecture
)

Event.create!(
  title: 'Concert Classique Harmonies Intemporelle',
  short_description: "Vivez l'émotion de la musique classique lors de notre concert où s'entremêlent les chefs-d'œuvre intemporels interprétés par des musiciens virtuoses.",
  long_description: "Plongez dans l'élégance et la grâce intemporelles de la musique classique lors de notre événement spécial : le concert Harmonies Intemporelles. Vivez une expérience immersive où les mélodies envoûtantes des grands compositeurs prennent vie dans un cadre enchanteur.

  Sous les lustres scintillants d'une salle prestigieuse, laissez-vous transporter par la virtuosité de nos musiciens renommés. Des sonorités majestueuses de Mozart aux émotions intenses de Beethoven, chaque note résonnera dans votre âme, vous transportant à travers des époques musicales variées.

  Ce concert captivant présente un répertoire soigneusement sélectionné qui met en valeur la richesse et la diversité de la musique classique. De l'orchestre symphonique aux solos exquis, chaque performance est une célébration de l'art et de la passion musicale.",
  address: '23 rue de la paix',
  city: 'Le Mans',
  event_date: '2023-07-12',
  limit_participants: 35,
  user: user1,
  category: categoryConcert
)

Event.create!(
  title: 'Cinéma Sous les Étoiles',
  short_description: 'Découvrez une expérience cinématographique unique sous le ciel étoilé, avec une sélection de films captivants et des moments magiques à partager en plein air.',
  long_description: "Bienvenue à notre événement cinématographique en plein air : Cinéma Sous les Étoiles. Préparez-vous à une immersion totale dans le monde magique du cinéma, tout en profitant d'une atmosphère envoûtante sous le ciel étoilé.

  Notre sélection de films soigneusement choisis offre une diversité de genres, des classiques intemporels aux dernières œuvres primées. Installez-vous confortablement dans notre espace de projection en plein air, où une ambiance chaleureuse et conviviale vous attend.

  Chaque projection est une occasion de partager des moments de détente et de plaisir avec vos proches, vos amis ou votre famille. Profitez de l'expérience cinématographique collective, où les rires, les larmes et les émotions se mêlent dans une atmosphère de partage et de connexion.

  Notre cinéma en plein air crée un cadre idyllique pour se détendre et se plonger dans des histoires captivantes tout en respirant l'air frais et en admirant le firmament étoilé. Chaque film devient une aventure immersive où vous êtes transporté dans des mondes imaginaires et des récits inspirants.

  Rejoignez-nous pour une soirée magique où la magie du cinéma se mêle à la beauté de la nature. Vivez des moments inoubliables, partagez des discussions passionnées sur les films et créez des souvenirs mémorables lors de notre événement",
  address: '6 passage de la poule noire',
  city: 'Nantes',
  event_date: '2023-04-12',
  limit_participants: 20,
  user: user5,
  category: categoryDanse
)

Event.create!(
  title: 'Soirée Dansante Rythmes Envoûtants',
  short_description: "Plongez dans une soirée pleine de passion et de mouvements enivrants lors de notre événement dansant, où la musique enflamme le corps et l'esprit.",
  long_description: "Bienvenue à notre soirée dansante Rythmes Envoûtants, une célébration de la danse, de la musique et de l'énergie contagieuse qui rassemble les passionnés de danse de tous horizons.

  C'est un événement où les rythmes envoûtants vous entraînent dans un tourbillon de mouvements gracieux et de sensations enivrantes. Notre soirée est une invitation à explorer une variété de styles de danse, des danses latines exaltantes aux pas élégants du tango, en passant par les rythmes dynamiques du swing.

  Quel que soit votre niveau de danse, notre événement accueille les débutants curieux et les danseurs expérimentés. Notre piste de danse devient un lieu d'expression où chacun peut se laisser emporter par la musique, explorer de nouveaux pas et partager des moments de connexion et de complicité.

  La soirée est animée par des DJ talentueux qui vous transportent à travers des séquences musicales éclectiques, vous incitant à bouger et à vous abandonner à la joie pure de la danse. L'ambiance vibrante et animée crée un espace où les sourires, les rires et les mouvements créent une atmosphère de célébration et de partage.

  Rejoignez-nous pour une nuit où la musique devient le langage universel de l'expression corporelle, où chaque pas de danse raconte une histoire et où la spontanéité et la créativité règnent en maître. Réservez votre place pour la soirée dansante Rythmes Envoûtants et laissez-vous emporter par la magie de la danse.",
  address: "12 rue de belleville",
  city: 'Paris',
  event_date: '2023-03-12',
  limit_participants: 30,
  user: user1,
  category: categoryPhotographie
)

Event.create!(
  title: "Randonnée Exploration Naturelle",
  short_description: "Partez à l'aventure lors de notre randonnée en pleine nature, découvrez des paysages enchanteurs et vivez des moments de connexion avec la nature.",
  long_description: "Bienvenue à notre randonnée Exploration Naturelle, une escapade immersive pour les amateurs de plein air et les passionnés de découverte de la nature.

  Cette randonnée est une invitation à explorer des sentiers pittoresques, à respirer l'air frais et à se connecter avec la splendeur naturelle qui nous entoure. Nous vous emmenons dans un voyage où chaque pas vous rapproche de paysages majestueux, de forêts luxuriantes et de vues panoramiques à couper le souffle.

  Nos itinéraires soigneusement sélectionnés offrent une variété de niveaux de difficulté pour accueillir tous les randonneurs, des débutants aux plus expérimentés. C'est l'occasion de s'évader de la routine quotidienne, de se ressourcer et de se revitaliser au contact de la nature.

  Nos guides passionnés et expérimentés vous accompagnent tout au long de cette aventure, partageant des connaissances sur la faune locale, la flore et les points d'intérêt remarquables. Chaque étape de la randonnée est une occasion de découvrir des trésors naturels cachés et d'en apprendre davantage sur l'écosystème environnant.

  C'est également un moment privilégié pour tisser des liens avec d'autres participants partageant la même passion pour l'exploration de la nature. La camaraderie et le partage d'expériences créent une atmosphère conviviale et un sentiment d'unité entre les participants.

  Joignez-vous à nous pour une journée d'aventure et d'émerveillement dans des décors naturels spectaculaires. Réservez votre place pour la randonnée Exploration Naturelle et laissez-vous inspirer par la beauté sauvage qui vous entoure.",
  address: '48 boulevard de rennes',
  city: 'Lyon',
  event_date: '2023-10-12',
  limit_participants: 12,
  user: user3,
  category: categoryRandonnee
)

puts 'All seeds are generated...'
