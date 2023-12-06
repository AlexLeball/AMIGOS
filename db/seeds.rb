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

photo = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701859691/sylvie-brunet_h4nj4z.png")
ahmed = User.new(
  email: 'Ahmed@example.com',
  password: 'password123',
  first_name: 'Ahmed',
  last_name: 'Salhi',
  birth_date: '1927-01-01',
  description: 'Je suis un utilisateur',
  city: 'Tours',
  creator: false
)
ahmed.photo.attach(io: photo, filename: "ahmed.jpg", content_type: "image/png")
ahmed.save

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

photo = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701859691/sylvie-brunet_h4nj4z.png")
sylvie = User.new(
  email: 'sylvie@sfr.fr',
  password: 'password123',
  first_name: 'Sylvie',
  last_name: 'Martin',
  birth_date: '1927-01-01',
  description: 'Je suis une passionnée de chevaux et de randonnées natures',
  city: 'Saint Malo',
  creator: false
)
sylvie.photo.attach(io: photo, filename: "sylvie.jpg", content_type: "image/png")
sylvie.save

puts 'Creating categories...'

cuisine = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792616/cooking_2_sheo3g.png")
categoryCuisine = Category.new(name: "Cuisine")
categoryCuisine.photo.attach(io: cuisine, filename: "cuisine.jpg", content_type: "image/png")
categoryCuisine.save

lecture = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701857726/lecture01_y6vnam.png")
categoryLecture = Category.new(name: "Lecture")
categoryLecture.photo.attach(io: lecture, filename: "lecture.jpg", content_type: "image/png")
categoryLecture.save

artisanat = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701857726/artisanat01_alnyt2.png")
categoryArtisanat = Category.new(name: "Artisanat")
categoryArtisanat.photo.attach(io: artisanat, filename: "artisanat.jpg", content_type: "image/png")
categoryArtisanat.save

yoga = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792623/yoga01_u0wzpa.png")
categoryYoga = Category.new(name: "Yoga")
categoryYoga.photo.attach(io: yoga, filename: "yoga.jpg", content_type: "image/png")
categoryYoga.save

randonnee = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701857726/randonnee01_w6wwto.png")
categoryRandonnee = Category.new(name: "Randonnée")
categoryRandonnee.photo.attach(io: randonnee, filename: "randonnee.jpg", content_type: "image/png")
categoryRandonnee.save

langues = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701857726/language01_qlxryt.png")
categoryLangues = Category.new(name: "Langues")
categoryLangues.photo.attach(io: langues, filename: "langues.jpg", content_type: "image/png")
categoryLangues.save

photographie = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792615/photo1_hbh0l6.png")
categoryPhotographie = Category.new(name: "Photographie")
categoryPhotographie.photo.attach(io: photographie, filename: "photographie.jpg", content_type: "image/png")
categoryPhotographie.save

danse = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792617/dance01_rux7py.png")
categoryDanse = Category.new(name: "Danse")
categoryDanse.photo.attach(io: danse, filename: "danse.jpg", content_type: "image/png")
categoryDanse.save

concert = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792621/conert01_svfq5b.png")
categoryConcert = Category.new(name: "Concert")
categoryConcert.photo.attach(io: concert, filename: "concert.jpg", content_type: "image/png")
categoryConcert.save

theatre = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792626/theatre_ripxeh.png")
categoryTheatre = Category.new(name: "Théâtre")
categoryTheatre.photo.attach(io: theatre, filename: "theatre.jpg", content_type: "image/png")
categoryTheatre.save

cinema = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701857726/cinema01_hy4yhs.png")
categoryCinema = Category.new(name: "Cinéma")
categoryCinema.photo.attach(io: cinema, filename: "cinema.jpg", content_type: "image/png")
categoryCinema.save

sport = URI.open("https://res.cloudinary.com/dn2p7hun2/image/upload/v1701792628/sport01_miv6gl.png")
categorySport = Category.new(name: "Sport")
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
  user: ahmed,
  category: categorySport,
  participants_count: 8
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
  category: categoryCuisine,
  participants_count: 4
)

Event.create!(
  title: "Cours de yoga Harmonie et Sérénité",
  short_description: "Découvrez l\'harmonie et la sérénité avec le cours de yoga de la coach certifiée, Marie-Louise",
  long_description: "Plongez dans un havre de paix intérieure lors de notre cours de yoga Harmonie et Sérénité. Venez découvrir une pratique du yoga qui va au-delà de la simple activité physique pour embrasser une approche holistique du bien-être mental, physique et spirituel.

  Dans un cadre accueillant et relaxant, notre cours offre bien plus qu\'une série de postures. Nos instructeurs expérimentés, imprégnés de la philosophie ancienne du yoga, vous guideront à travers des séquences de postures fluides, des exercices de respiration profonde et de méditation, vous permettant d\'explorer les dimensions les plus profondes de vous-même.",
  address: "10 Boulevard Beranger",
  city: 'Tours',
  event_date: '2023-01-12',
  limit_participants: 18,
  user: user3,
  category: categoryYoga,
  participants_count: 15
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
  user: ahmed,
  category: categoryConcert,
  participants_count: 25
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
  category: categoryCinema,
  participants_count: 12
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
  user: ahmed,
  category: categoryDanse,
  participants_count: 25
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
  category: categoryRandonnee,
  participants_count: 10
)

Event.create!(
  title: "Théâtre en Plein Air",
  short_description: "Plongez dans l'univers magique du théâtre en plein air, vivez des performances captivantes et laissez-vous emporter par l'art dramatique au cœur de la nature.",
  long_description: "Bienvenue à notre événement Théâtre en Plein Air, une expérience immersive pour les amoureux du théâtre et de la nature.

  Cette représentation théâtrale se déroule en plein air, dans un cadre naturel enchanteur. Venez découvrir des performances artistiques captivantes, où chaque acte vous transporte dans un monde de créativité et d'émotions. Laissez-vous emporter par l'art dramatique au cœur de paysages naturels pittoresques.

  Notre événement offre une sélection variée de pièces théâtrales, allant des classiques intemporels aux créations contemporaines, offrant ainsi une expérience diversifiée pour tous les amateurs de théâtre.

  Nos acteurs talentueux et passionnés vous offrent des représentations de qualité, créant une ambiance envoûtante où l'art et la nature se rejoignent pour vous offrir des moments inoubliables.

  C'est également une opportunité de se rassembler, d'échanger et de partager des émotions avec d'autres passionnés de théâtre. La magie du spectacle en plein air crée une atmosphère de connexion et de partage entre les spectateurs.

  Rejoignez-nous pour une journée immersive dédiée à l'art théâtral en plein air. Réservez votre place pour l'événement Théâtre en Plein Air et laissez-vous transporter par la puissance des performances artistiques au cœur de la nature.",
  address: '25 rue du Théâtre',
  city: 'Paris',
  event_date: '2023-11-15',
  limit_participants: 20,
  user: user3,
  category: categoryTheatre,
  participants_count: 14
)

Event.create!(
  title: "Spectacle Théâtral en Forêt",
  short_description: "Plongez dans un spectacle théâtral unique en plein cœur de la nature, où les arbres deviennent le décor de performances magistrales.",
  long_description: "Bienvenue à notre Spectacle Théâtral en Forêt, une expérience artistique et immersive qui fusionne l'art dramatique avec la beauté naturelle de la forêt.

  Cette représentation théâtrale spéciale se déroule au cœur d'une forêt majestueuse. Les sentiers deviennent des scènes et les arbres se transforment en décors, créant ainsi un spectacle où la nature elle-même participe à l'art théâtral.

  Laissez-vous transporter par des performances captivantes interprétées par des acteurs talentueux qui utilisent l'environnement naturel comme toile de fond pour leurs histoires émouvantes. Cette immersion théâtrale au sein de la nature vous promet des moments uniques et mémorables.

  Notre événement offre une variété de genres théâtraux, des pièces classiques aux expériences théâtrales contemporaines, offrant ainsi une palette diversifiée d'émotions et d'histoires à découvrir.

  C'est une occasion de se connecter avec la nature tout en appréciant l'art sous une forme nouvelle et inspirante. Rejoignez-nous pour cette expérience théâtrale en plein air, où la magie du spectacle rencontre la sérénité de la forêt.

  Réservez votre place pour le Spectacle Théâtral en Forêt et laissez-vous emporter par l'harmonie entre l'art dramatique et la nature environnante.",
  address: 'Chemin des Bois, Parc National',
  city: 'Marseille',
  event_date: '2023-12-08',
  limit_participants: 15,
  user: user3,
  category: categoryTheatre,
  participants_count: 7
)

Event.create!(
  title: "Marathon de Montagne",
  short_description: "Participez à une aventure sportive intense lors de notre marathon en montagne, défiez vos limites et explorez des paysages à couper le souffle.",
  long_description: "Bienvenue au Marathon de Montagne, une épreuve sportive passionnante pour les adeptes de courses en pleine nature et les amoureux de défis.

  Ce marathon se déroule au cœur de paysages montagneux époustouflants, offrant un parcours exigeant et stimulant. Chaque kilomètre est une opportunité de découvrir des vues panoramiques spectaculaires tout en repoussant vos limites personnelles.

  Notre événement accueille les coureurs de tous niveaux, offrant différentes catégories de course pour les amateurs et les athlètes chevronnés. C'est une occasion de se surpasser, de relever de nouveaux défis et de vivre une expérience sportive inoubliable.

  Des guides expérimentés accompagnent les participants tout au long du parcours, assurant la sécurité et partageant des conseils pour profiter pleinement de cette aventure unique en son genre.

  En participant à ce marathon, vous aurez l'opportunité de rencontrer d'autres passionnés de course en montagne, de partager des expériences et de créer des liens au sein d'une communauté dynamique et motivante.

  Relevez le défi et rejoignez-nous pour une journée de sport, d'adrénaline et de dépassement de soi lors du Marathon de Montagne. Réservez votre place dès maintenant et préparez-vous à vivre une expérience sportive exceptionnelle.",
  address: 'Station de ski Alpes du Sud',
  city: 'Grenoble',
  event_date: '2023-09-25',
  limit_participants: 200,
  user: user3,
  category: categorySport,
  participants_count: 138
)

Event.create!(
  title: "Atelier de Photographie pour les Aînés",
  short_description: "Explorez l'art de la photographie lors d'un atelier dédié aux aînés, capturez des moments précieux et exprimez votre créativité à travers l'objectif.",
  long_description: "Bienvenue à notre Atelier de Photographie pour les Aînés, une expérience dédiée à la découverte et à la pratique de la photographie pour les personnes âgées passionnées par cet art visuel.

  Cet atelier est spécialement conçu pour permettre aux participants plus âgés d'explorer l'univers de la photographie, d'apprendre des techniques de prise de vue et de capturer des moments uniques à travers leur propre perspective artistique.

  Nos instructeurs expérimentés sont là pour guider les participants à travers les différentes étapes de la photographie, des bases techniques à la composition artistique, en utilisant des équipements simples et accessibles.

  C'est une occasion de partager des expériences, d'échanger des idées et de se connecter avec d'autres passionnés de photographie de votre génération, tout en découvrant de nouveaux aspects créatifs de l'art visuel.

  Cet atelier encourage l'expression individuelle à travers la photographie, offrant un espace où chacun peut capturer la beauté du monde qui l'entoure et créer des souvenirs inoubliables.

  Rejoignez-nous pour cette expérience enrichissante et créative. Réservez votre place pour l'Atelier de Photographie pour les Aînés et laissez votre passion pour la photographie s'épanouir.",
  address: 'Centre Culturel des Aînés',
  city: 'Bordeaux',
  event_date: '2023-11-10',
  limit_participants: 15,
  user: user3,
  category: categoryPhotographie,
  participants_count: 13
)

Event.create!(
  title: "Café des Langues : Rencontres et Échanges Linguistiques",
  short_description: "Participez à notre Café des Langues pour pratiquer et améliorer vos compétences linguistiques, échangez avec d'autres passionnés de langues et découvrez de nouvelles cultures.",
  long_description: "Bienvenue au Café des Langues, un événement convivial dédié à la pratique des langues étrangères et à la découverte interculturelle.

  Notre Café des Langues offre un espace informel où les participants peuvent se rencontrer, discuter et échanger dans différentes langues. Que vous souhaitiez améliorer votre anglais, pratiquer le français, ou découvrir de nouvelles langues, cet événement est ouvert à tous les niveaux et à toutes les langues.

  Les échanges linguistiques se déroulent dans une atmosphère détendue et chaleureuse, favorisant les interactions entre les participants de divers horizons culturels. C'est une occasion de partager des expériences, d'apprendre les uns des autres et de tisser des liens au-delà des frontières linguistiques.

  Nos sessions incluent des activités ludiques, des jeux de langage et des discussions thématiques pour encourager la pratique et l'apprentissage des langues de manière ludique et engageante.

  Rejoignez-nous pour une expérience linguistique enrichissante et amusante. Réservez votre place pour le Café des Langues et plongez dans un monde de diversité linguistique et culturelle.",
  address: 'Bistro Polyglotte, Rue de la Langue',
  city: 'Strasbourg',
  event_date: '2023-10-28',
  limit_participants: 30,
  user: user3,
  category: categoryLangues,
  participants_count: 13
)

Event.create!(
  title: "Club de Lecture : Découverte littéraire et Échanges",
  short_description: "Rejoignez notre Club de Lecture pour explorer des œuvres littéraires variées, partager vos impressions et discuter passionnément de livres avec d'autres amateurs de lecture.",
  long_description: "Bienvenue au Club de Lecture, un espace dédié aux amoureux des livres et de la littérature, où la découverte, la réflexion et le partage autour des œuvres littéraires sont mis à l'honneur.

  Notre club offre l'opportunité de plonger dans des livres variés, de différents genres et auteurs, stimulant ainsi la curiosité et l'esprit critique. Chaque séance est une occasion d'explorer de nouvelles œuvres, d'exprimer ses opinions et d'enrichir ses connaissances littéraires.

  Les discussions sont animées par des modérateurs passionnés, facilitant les échanges et les réflexions autour des thématiques abordées dans les livres. Que vous soyez un lecteur assidu ou que vous souhaitiez simplement découvrir de nouveaux horizons littéraires, notre club est ouvert à tous.

  C'est également une opportunité de rencontrer des personnes partageant la même passion pour la lecture, d'échanger des recommandations de livres et de créer des liens autour de la littérature.

  Rejoignez-nous pour des moments riches en découvertes littéraires et en discussions animées. Réservez votre place au Club de Lecture et plongez dans l'univers fascinant des livres et des idées.",
  address: 'Bibliothèque Littéraire, Rue des Livres',
  city: 'Lille',
  event_date: '2023-11-15',
  limit_participants: 20,
  user: user3,
  category: categoryLecture,
  participants_count: 14
)

Event.create!(
  title: "Atelier de Cuisine Méditerranéenne : Découverte des Saveurs",
  short_description: "Joignez-vous à notre atelier de cuisine pour explorer les délices de la cuisine méditerranéenne, apprenez de nouvelles recettes et dégustez des plats authentiques et savoureux.",
  long_description: "Bienvenue à notre Atelier de Cuisine Méditerranéenne, une expérience gustative et culturelle dédiée à la découverte des saveurs ensoleillées de la Méditerranée.

  Cet atelier culinaire vous offre l'opportunité d'apprendre à préparer des plats traditionnels méditerranéens, de la paella espagnole aux mezze libanais, en passant par les délicieuses pâtes italiennes. Nos chefs passionnés vous guideront à travers des recettes authentiques et des techniques de cuisine spécifiques à cette région.

  C'est une occasion de plonger dans l'art de la cuisine méditerranéenne, en utilisant des ingrédients frais et des épices aromatiques pour créer des plats riches en saveurs et en histoire culinaire.

  Après la session de cuisine, nous aurons le plaisir de déguster ensemble les plats préparés, favorisant ainsi les échanges et les conversations autour de la table, dans une ambiance conviviale et détendue.

  Rejoignez-nous pour une aventure culinaire captivante. Réservez votre place pour l'Atelier de Cuisine Méditerranéenne et laissez-vous enchanter par les saveurs ensoleillées de la Méditerranée.",
  address: 'École de Cuisine Soleil, Rue des Saveurs',
  city: 'Nice',
  event_date: '2023-10-20',
  limit_participants: 15,
  user: user3,
  category: categoryCuisine,
  participants_count: 5
)

Event.create!(
  title: "Atelier de Poterie Artisanale : Création et Modelage",
  short_description: "Plongez dans l'art de la poterie artisanale, découvrez le modelage de l'argile et créez des pièces uniques avec nos artisans expérimentés.",
  long_description: "Bienvenue à notre Atelier de Poterie Artisanale, une immersion dans l'univers créatif de la poterie et du modelage de l'argile.

  Cet atelier d'artisanat vous offre l'occasion d'apprendre les techniques de base de la poterie, du modelage et du façonnage de l'argile pour créer des pièces uniques. Nos artisans expérimentés partageront leur expertise et vous guideront dans la réalisation de vos créations.

  Que vous souhaitiez créer des bols, des vases, des sculptures ou toute autre pièce artisanale, cet atelier vous permettra de libérer votre créativité et d'explorer le monde fascinant de la poterie.

  Nous fournissons tout le matériel nécessaire pour vous permettre de vous plonger pleinement dans cette expérience artistique enrichissante.

  Rejoignez-nous pour une journée dédiée à l'artisanat et à la créativité. Réservez votre place pour l'Atelier de Poterie Artisanale et découvrez le plaisir de créer des pièces uniques de poterie.",
  address: 'Centre d\'Art Artisanal, Rue de l\'Artisanat',
  city: 'Marseille',
  event_date: '2023-11-15',
  limit_participants: 12,
  user: user3,
  category: categoryArtisanat,
  participants_count: 4
)

Event.create!(
  title: "Atelier de Création de Bijoux Artisanaux",
  short_description: "Explorez l'art de la fabrication de bijoux artisanaux, créez vos propres pièces uniques et découvrez les techniques traditionnelles avec nos artisans experts.",
  long_description: "Bienvenue à notre Atelier de Création de Bijoux Artisanaux, une expérience immersive pour les passionnés de bijouterie artisanale et de création artistique.

  Cet atelier vous plonge dans l'univers créatif de la fabrication de bijoux artisanaux. Nos artisans experts vous apprendront les techniques traditionnelles de fabrication de bijoux, de la conception à la réalisation.

  Vous aurez l'opportunité de manipuler divers matériaux tels que les perles, les métaux précieux et les pierres semi-précieuses pour créer des pièces uniques qui reflètent votre style personnel.

  Que vous souhaitiez concevoir des colliers, des bracelets, des boucles d'oreilles ou d'autres accessoires, cet atelier vous permettra d'explorer la créativité et de repartir avec vos propres créations uniques.

  Nous fournissons tous les outils nécessaires pour que vous puissiez exprimer votre talent et votre vision artistique lors de cette expérience enrichissante.

  Rejoignez-nous pour une journée dédiée à l'artisanat et à la création artistique. Réservez votre place pour l'Atelier de Création de Bijoux Artisanaux et laissez-vous inspirer par le monde fascinant de la bijouterie artisanale.",
  address: 'Atelier d\'Art et de Création, Rue des Bijoux',
  city: 'Lyon',
  event_date: '2023-12-10',
  limit_participants: 10,
  user: user3,
  category: categoryArtisanat,
  participants_count: 7
)

Event.create!(
  title: "Randonnée Douce pour les Seniors",
  short_description: "Participez à notre randonnée adaptée aux seniors, découvrez la nature en douceur et profitez d'une balade relaxante en plein air.",
  long_description: "Bienvenue à notre Randonnée Douce spécialement conçue pour les seniors en quête d'une expérience de plein air adaptée et relaxante.

  Cette randonnée propose un parcours tranquille permettant d'explorer la nature sans difficulté excessive. Notre itinéraire est adapté pour offrir une expérience de marche agréable et accessible à tous, favorisant la découverte de paysages pittoresques.

  Nos guides expérimentés accompagnent le groupe, veillant au bien-être et à la sécurité des participants. C'est l'occasion parfaite de profiter du grand air, de socialiser et de rester actif en douceur.

  Cette randonnée est conçue pour créer une atmosphère détendue où les participants peuvent apprécier la beauté de la nature tout en prenant part à une activité physique modérée.

  Rejoignez-nous pour une matinée de détente et de découverte. Réservez votre place pour la Randonnée Douce et profitez d'une expérience de plein air adaptée aux seniors.",
  address: 'Parc Naturel des Sénioriales, Avenue des Aînés',
  city: 'Toulouse',
  event_date: '2023-11-05',
  limit_participants: 20,
  user: user3,
  category: categorySport,
  participants_count: 14,
)

Event.create!(
  title: "Projection de Classiques du Cinéma pour Séniors",
  short_description: "Rejoignez-nous pour une journée spéciale de projection de films classiques, une opportunité de se replonger dans des chefs-d'œuvre cinématographiques et de partager des souvenirs.",
  long_description: "Bienvenue à notre journée spéciale de Projection de Classiques du Cinéma dédiée aux séniors, une occasion de se réunir et de redécouvrir des chefs-d'œuvre cinématographiques intemporels.

  Cette journée de projection est conçue pour offrir une expérience cinématographique nostalgique en visionnant des films classiques qui ont marqué les époques. Des classiques du cinéma français aux chefs-d'œuvre hollywoodiens, cette sélection de films propose une immersion dans l'histoire du cinéma.

  Notre événement vise à créer une ambiance conviviale où les participants peuvent partager des souvenirs, échanger sur les films projetés et revivre l'émotion des grands classiques du septième art.

  La journée comprendra plusieurs séances de projection, des pauses pour discuter des films et des moments de partage autour du cinéma. C'est une opportunité de se divertir, de socialiser et de revivre des moments forts du cinéma.

  Rejoignez-nous pour cette journée spéciale dédiée au cinéma classique. Réservez votre place pour la Projection de Classiques du Cinéma et replongez dans l'univers captivant des grands films d'hier.",
  address: 'Centre Culturel du Cinéma, Rue du Cinéphile',
  city: 'Paris',
  event_date: '2023-12-15',
  limit_participants: 30,
  user: user3,
  category: categoryCinema,
  participants_count: 19
)

puts 'All seeds are generated...'
