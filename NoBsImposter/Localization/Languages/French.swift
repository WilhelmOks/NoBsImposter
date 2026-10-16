//
//  French.swift
//  NoBsImposter
//
//  French (fr).
//

import Foundation

struct FrenchStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Trouve le traître" }

    // MARK: How to play
    var howToPlay: String { "Comment jouer" }
    var howToPlayIntro: String {
        "Imposter est un jeu de société où l'on se passe un seul appareil, pour 3 à 12 joueurs."
    }
    var howToPlaySteps: [String] {
        [
            "Préparez la manche : choisissez le nombre de joueurs et d'imposteurs, sélectionnez les catégories et, si vous le souhaitez, nommez les joueurs.",
            "Faites tourner l'appareil : chaque joueur tient la carte pour découvrir en secret son mot. Un ou plusieurs imposteurs ne reçoivent pas le mot.",
            "Donnez des indices : en commençant par le joueur affiché, chacun donne à tour de rôle un court indice sur le mot — sans le dire directement.",
            "Discutez et votez : échangez vos impressions et votez ensemble pour désigner l'imposteur.",
            "Révélation : appuyez sur « Révéler la solution » pour dévoiler le mot et les imposteurs.",
        ]
    }
    var howToPlayTip: String {
        "L'imposteur gagne s'il reste caché — ou s'il devine le mot secret. Tous les autres gagnent s'ils démasquent l'imposteur."
    }

    // MARK: Setup
    var players: String { "Joueurs" }
    var imposters: String { "Imposteurs" }
    var categories: String { "Catégories" }
    var names: String { "Noms" }
    var namesHint: String { "Facultatif — laissez vide pour « Joueur 1 », « Joueur 2 » …" }
    var all: String { "Tous" }
    var none: String { "Aucun" }
    var startGame: String { "Commencer" }
    var selectAtLeastOneCategory: String { "Choisissez au moins une catégorie" }
    var imposterKnowsCategoryLabel: String { "L'imposteur connaît la catégorie" }
    var keepScreenOnLabel: String { "Garder l'écran allumé" }
    var allCategories: String { "Toutes les catégories" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) sur \(total)" }

    // MARK: Cancel
    var cancel: String { "Annuler" }
    var quitGameTitle: String { "Quitter la partie ?" }
    var quitGameMessage: String { "La manche en cours sera perdue." }

    // MARK: Reveal
    var tapToReveal: String { "Appuyez pour révéler" }
    var holdToReveal: String { "Maintenez pour révéler" }
    var next: String { "Suivant" }
    var done: String { "Terminé" }
    var youAreImposter: String { "Tu es l'imposteur !" }
    var imposterHint: String {
        "Tu ne connais que la catégorie. Devine le mot des autres — et ne te trahis pas."
    }
    var imposterHintNoCategory: String {
        "Devine le mot des autres — et ne te trahis pas."
    }
    var categoryLabel: String { "Catégorie" }
    var passDevicePrefix: String { "Passe l'appareil à " }
    func passDeviceTo(name: String) -> String { "Passe l'appareil à \(name)" }
    func playerTitle(_ n: Int) -> String { "Joueur \(n)" }

    // MARK: Summary
    var everyoneReady: String { "Tout le monde est prêt !" }
    var discussHint: String {
        "Décrivez votre mot à tour de rôle, puis votez pour désigner l'imposteur."
    }
    var startingPlayer: String { "Premier joueur" }
    var startsDescribing: String { "commence à décrire" }
    var newRound: String { "Nouvelle manche" }
    var backToMenu: String { "Retour au menu" }
    var revealSolution: String { "Révéler la solution" }
    var revealSolutionTitle: String { "Révéler la solution ?" }
    var revealSolutionMessage: String { "Le mot et les imposteurs seront affichés." }
    var theWordWas: String { "Le mot était" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "1 imposteur est parmi vous" : "\(count) imposteurs sont parmi vous"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "L'imposteur était" : "Les imposteurs étaient"
    }
}

extension WordData {
    static let frenchCategories: [WordCategory] = [
        WordCategory(id: "celebrities", symbol: "star.fill", name: "Célébrités", words: [
            "Albert Einstein", "Napoléon Bonaparte", "Charles de Gaulle", "Louis XIV", "Jeanne d'Arc",
            "Victor Hugo", "Molière", "Voltaire", "Jean-Jacques Rousseau", "Marie Curie",
            "Louis Pasteur", "Coco Chanel", "Édith Piaf", "Jacques Brel", "Serge Gainsbourg",
            "Johnny Hallyday", "Charles Aznavour", "Brigitte Bardot", "Catherine Deneuve", "Jean Reno",
            "Gérard Depardieu", "Marion Cotillard", "Omar Sy", "Jean Dujardin", "Audrey Tautou",
            "Vincent Cassel", "Alain Delon", "Louis de Funès", "Jean Gabin", "Jean-Paul Belmondo",
            "Zinedine Zidane", "Kylian Mbappé", "Thierry Henry", "Michel Platini", "Antoine Griezmann",
            "Teddy Riner", "Tony Parker", "Renaud", "Mylène Farmer", "Daft Punk",
            "David Guetta", "Stromae", "Christine and the Queens", "Vanessa Paradis", "Patrick Bruel",
            "Céline Dion", "Garou", "Claude Monet", "Auguste Renoir", "Paul Cézanne",
            "Henri Matisse", "Auguste Rodin", "Simone de Beauvoir", "Jean-Paul Sartre", "Albert Camus",
            "Antoine de Saint-Exupéry", "Alexandre Dumas", "Jules Verne", "Honoré de Balzac", "Marcel Proust",
            "Gustave Eiffel", "Louis Braille", "Yves Saint Laurent", "Christian Dior", "Thierry Mugler",
            "Zaz", "Indila", "Aya Nakamura", "Jamel Debbouze", "Dany Boon",
            "Leonardo da Vinci", "Pablo Picasso", "Vincent van Gogh", "Salvador Dali", "Michel-Ange",
            "William Shakespeare", "Mozart", "Beethoven", "Bach", "Chopin",
            "Isaac Newton", "Charles Darwin", "Galilée", "Nikola Tesla", "Stephen Hawking",
            "Nelson Mandela", "Martin Luther King", "Mahatma Gandhi", "Abraham Lincoln", "Winston Churchill",
            "Barack Obama", "Donald Trump", "Angela Merkel", "Vladimir Poutine", "Jules César",
            "Cléopâtre", "Christophe Colomb", "Marco Polo", "Che Guevara", "Karl Marx",
            "Sigmund Freud", "Elvis Presley", "Michael Jackson", "Freddie Mercury", "John Lennon",
            "Paul McCartney", "Bob Dylan", "David Bowie", "Bob Marley", "Jimi Hendrix",
            "Madonna", "Beyoncé", "Rihanna", "Lady Gaga", "Taylor Swift",
            "Adele", "Ed Sheeran", "Bruno Mars", "Justin Bieber", "Shakira",
            "Eminem", "Snoop Dogg", "Jay-Z", "Drake", "The Weeknd",
            "Billie Eilish", "Dua Lipa", "Ariana Grande", "Katy Perry", "Elton John",
            "Mick Jagger", "Prince", "Whitney Houston", "Tina Turner", "Frank Sinatra",
            "Brad Pitt", "Angelina Jolie", "Leonardo DiCaprio", "Tom Cruise", "Tom Hanks",
            "Johnny Depp", "Robert De Niro", "Al Pacino", "George Clooney", "Will Smith",
            "Denzel Washington", "Morgan Freeman", "Keanu Reeves", "Arnold Schwarzenegger", "Sylvester Stallone",
            "Clint Eastwood", "Harrison Ford", "Robin Williams", "Jim Carrey", "Eddie Murphy",
            "Julia Roberts", "Meryl Streep", "Nicole Kidman", "Scarlett Johansson", "Jennifer Lawrence",
            "Charlize Theron", "Natalie Portman", "Emma Watson", "Audrey Hepburn", "Marilyn Monroe",
            "Charlie Chaplin", "Bruce Lee", "Jackie Chan", "Daniel Craig", "Sean Connery",
            "Ryan Gosling", "Ryan Reynolds", "Hugh Jackman", "Chris Hemsworth", "Matt Damon",
            "Lionel Messi", "Cristiano Ronaldo", "Neymar", "Pelé", "Diego Maradona",
            "Roger Federer", "Rafael Nadal", "Novak Djokovic", "Serena Williams", "Yannick Noah",
            "Usain Bolt", "Michael Jordan", "LeBron James", "Muhammad Ali", "Mike Tyson",
            "Lewis Hamilton", "Michael Schumacher", "Tiger Woods", "Oprah Winfrey", "Elon Musk",
            "Bill Gates", "Steve Jobs", "Mark Zuckerberg", "Jeff Bezos", "Walt Disney",
            "Karl Lagerfeld", "Jean-Paul Gaultier", "J.K. Rowling", "Stephen King", "Agatha Christie",
            "Ernest Hemingway", "Oscar Wilde", "Franz Kafka", "Gabriel García Márquez", "Hergé",
            "Jean Cocteau", "François Truffaut", "Jean-Luc Godard", "Luc Besson", "Marcel Pagnol",
        ]),
        WordCategory(id: "movies", symbol: "film.fill", name: "Films", words: [
            "Le Parrain", "Retour vers le futur", "Titanic", "Avatar", "Star Wars",
            "Jurassic Park", "The Dark Knight", "La Liste de Schindler", "Le Silence des agneaux", "Forrest Gump",
            "Pulp Fiction", "Matrix", "Gladiator", "Braveheart", "American Beauty",
            "Fight Club", "Les Affranchis", "Reservoir Dogs", "Psychose", "L'Exorciste",
            "Les Dents de la mer", "E.T. l'extraterrestre", "Les Aventuriers de l'arche perdue", "Indiana Jones et le Temple maudit", "Indiana Jones et la Dernière Croisade",
            "Piège de cristal", "58 minutes pour vivre", "Une journée en enfer", "Rambo", "Rocky",
            "Terminator", "Terminator 2", "Predator", "Alien", "Aliens",
            "Independence Day", "Men in Black", "Armageddon", "En pleine tempête", "Seul sur Mars",
            "Gravity", "Interstellar", "Inception", "Tenet", "Dunkerque",
            "Memento", "Le Prestige", "Il faut sauver le soldat Ryan", "Apocalypse Now", "Full Metal Jacket",
            "Platoon", "Le Pianiste", "Hôtel Rwanda", "Blood Diamond", "Invictus",
            "Le Dernier des Mohicans", "Danse avec les loups", "The Revenant", "Seven", "Zodiac",
            "Erin Brockovich", "Un homme d'exception", "Le Diable s'habille en Prada", "La Revanche d'une blonde", "Le Journal de Bridget Jones",
            "Pretty Woman", "Mary à tout prix", "American Pie", "SuperGrave", "Very Bad Trip",
            "Scary Movie", "La Malédiction", "Poltergeist", "Ça", "Mister Babadook",
            "Get Out", "Hérédité", "Midsommar", "Sans un bruit", "Bird Box",
            "Saw", "Hostel", "Scream", "Les Griffes de la nuit", "Halloween",
            "Vendredi 13", "Chinatown", "La Garçonnière", "Certains l'aiment chaud", "Le Dictateur",
            "Les Temps modernes", "La Ruée vers l'or", "Ben-Hur", "Lawrence d'Arabie", "Spartacus",
            "Cléopâtre", "La Mélodie du bonheur", "West Side Story", "Grease", "La Fièvre du samedi soir",
            "Dirty Dancing", "Footloose", "Moulin Rouge", "Chicago", "La La Land",
            "Mamma Mia", "Bohemian Rhapsody", "Rocketman", "Whiplash", "Birdman",
            "Parasite", "Roma", "Marriage Story", "The Irishman", "Le Loup de Wall Street",
            "Les Infiltrés", "Kill Bill", "Jackie Brown", "Les Huit Salopards", "Django Unchained",
            "No Country for Old Men", "There Will Be Blood", "Drive", "Mad Max", "Mad Max Fury Road",
            "Waterworld", "2001 l'Odyssée de l'espace", "La Planète des singes", "Blade Runner", "Le Cinquième Élément",
            "Contact", "Arrête-moi si tu peux", "Le Terminal", "Lincoln", "Le Pont des espions",
            "1917", "Oppenheimer", "Barbie", "Everything Everywhere All at Once", "Top Gun",
            "Top Gun Maverick", "La Momie", "Jumanji", "La Nuit au musée", "Spider-Man",
            "Iron Man", "Thor", "Captain America", "Avengers", "Les Gardiens de la Galaxie",
            "Black Panther", "Doctor Strange", "Ant-Man", "Deadpool", "X-Men",
            "Logan", "Batman", "Superman", "Wonder Woman", "Aquaman",
            "Joker", "Le Hobbit", "Le Seigneur des anneaux", "La Communauté de l'anneau", "Le Retour du roi",
            "Harry Potter à l'école des sorciers", "Harry Potter et la Chambre des secrets", "Harry Potter et le Prisonnier d'Azkaban", "Les Animaux fantastiques", "Pirates des Caraïbes",
            "Transformers", "Mission impossible", "Casino Royale", "Skyfall", "Spectre",
            "Goldfinger", "Citizen Kane", "Blanche-Neige et les Sept Nains", "Pinocchio", "Fantasia",
            "Bambi", "Cendrillon", "Peter Pan", "La Belle et le Clochard", "La Belle au bois dormant",
            "Les 101 Dalmatiens", "Le Livre de la jungle", "La Petite Sirène", "La Belle et la Bête", "Aladdin",
            "Le Roi lion", "Pocahontas", "Le Bossu de Notre-Dame", "Hercule", "Mulan",
            "Tarzan", "Lilo et Stitch", "Le Monde de Nemo", "Les Indestructibles", "Ratatouille",
            "WALL-E", "Là-haut", "Rebelle", "La Reine des neiges", "Coco",
            "Soul", "Encanto", "Vaiana", "Raiponce", "Alice au pays des merveilles",
            "Dumbo", "Le Pôle express", "Shrek", "Shrek 2", "Kung Fu Panda",
            "Madagascar", "L'Âge de glace", "Le Chat potté", "Dragons", "Les Trolls",
            "Baby Boss", "Les Minions", "Moi, moche et méchant", "Comme des bêtes", "Tous en scène",
            "Casablanca", "Chantons sous la pluie", "Autant en emporte le vent", "Les Évadés", "Douze hommes en colère",
            "Vol au-dessus d'un nid de coucou", "Shining", "Black Swan", "Le Fabuleux Destin d'Amélie Poulain", "Intouchables",
            "La Grande Vadrouille", "Les Visiteurs", "Bienvenue chez les Ch'tis", "Léon", "Le Grand Bleu",
            "La Haine", "Astérix et Obélix", "Les Choristes", "Taxi", "OSS 117",
        ]),
        WordCategory(id: "animals", symbol: "pawprint.fill", name: "Animaux", words: [
            "chien", "chat", "cheval", "vache", "cochon",
            "mouton", "chèvre", "âne", "lapin", "souris",
            "rat", "hamster", "cochon d'Inde", "écureuil", "renard",
            "loup", "ours", "éléphant", "lion", "tigre",
            "léopard", "guépard", "jaguar", "puma", "lynx",
            "hyène", "suricate", "rhinocéros", "hippopotame", "girafe",
            "zèbre", "gnou", "buffle", "bison", "yak",
            "chameau", "dromadaire", "lama", "alpaga", "renne",
            "élan", "cerf", "chevreuil", "sanglier", "blaireau",
            "martre", "belette", "loutre", "castor", "hérisson",
            "taupe", "chauve-souris", "orang-outan", "chimpanzé", "gorille",
            "gibbon", "macaque", "babouin", "lémurien", "koala",
            "kangourou", "wombat", "opossum", "tatou", "paresseux",
            "fourmilier", "porc-épic", "raton laveur", "moufette", "dauphin",
            "baleine", "baleine bleue", "baleine à bosse", "orque", "narval",
            "phoque", "otarie", "morse", "lion de mer", "ours polaire",
            "renard polaire", "léopard des neiges", "mangouste", "serval", "ocelot",
            "aigle", "pygargue", "faucon", "autour", "buse",
            "hibou", "grand-duc", "harfang des neiges", "perroquet", "cacatoès",
            "ara", "perruche", "canari", "pigeon", "moineau",
            "merle", "grive", "rouge-gorge", "mésange", "pinson",
            "étourneau", "hirondelle", "martinet", "coucou", "pic",
            "pie", "corneille", "corbeau", "geai", "cigogne",
            "héron", "flamant rose", "pélican", "mouette", "canard",
            "oie", "cygne", "pingouin", "autruche", "paon",
            "dinde", "faisan", "perdrix", "caille", "poule",
            "crocodile", "alligator", "lézard", "gecko", "caméléon",
            "iguane", "dragon de Komodo", "tortue", "serpent", "python",
            "cobra", "serpent à sonnette", "grenouille", "crapaud", "salamandre",
            "triton", "axolotl", "carpe", "brochet", "sandre",
            "saumon", "truite", "thon", "requin", "requin-marteau",
            "grand requin blanc", "raie", "anguille", "hareng", "sardine",
            "seiche", "pieuvre", "étoile de mer", "méduse", "corail",
            "écrevisse", "homard", "crevette", "crabe", "moule",
            "escargot", "libellule", "papillon", "abeille", "guêpe",
            "fourmi", "coccinelle", "sauterelle", "scarabée", "araignée",
        ]),
        WordCategory(id: "food", symbol: "fork.knife", name: "Nourriture & Boissons", words: [
            "pomme", "poire", "banane", "orange", "citron",
            "citron vert", "fraise", "framboise", "mûre", "myrtille",
            "cerise", "prune", "pêche", "abricot", "mangue",
            "ananas", "pastèque", "melon", "raisin", "kiwi",
            "figue", "datte", "noix de coco", "papaye", "avocat",
            "grenade", "mandarine", "pamplemousse", "groseille", "cassis",
            "carotte", "pomme de terre", "tomate", "concombre", "poivron",
            "oignon", "ail", "brocoli", "chou-fleur", "épinard",
            "laitue", "salade", "courgette", "aubergine", "maïs",
            "petits pois", "haricots", "lentilles", "pois chiches", "céleri",
            "poireau", "asperge", "radis", "chou rouge", "chou",
            "chou de Bruxelles", "betterave", "fenouil", "artichaut", "champignon",
            "gingembre", "pain", "pain complet", "baguette", "croissant",
            "pain au chocolat", "brioche", "toast", "bretzel", "bagel",
            "riz", "pâtes", "spaghetti", "penne", "lasagnes",
            "macaroni", "couscous", "quinoa", "flocons d'avoine", "muesli",
            "céréales", "beurre", "margarine", "fromage", "camembert",
            "brie", "roquefort", "comté", "gruyère", "mozzarella",
            "parmesan", "chèvre", "fromage frais", "yaourt", "crème fraîche",
            "lait", "œuf", "œufs brouillés", "œuf au plat", "omelette",
            "viande", "poulet", "porc", "bœuf", "agneau",
            "lard", "jambon", "saucisse", "saucisson", "salami",
            "escalope", "steak", "hamburger", "boulette", "poisson",
            "saumon", "thon", "truite", "cabillaud", "crevette",
            "moules", "huîtres", "calamar", "soupe", "soupe à l'oignon",
            "velouté", "bouillabaisse", "ratatouille", "quiche", "pizza",
            "salade grecque", "salade niçoise", "frites", "purée", "gratin dauphinois",
            "cassoulet", "coq au vin", "bœuf bourguignon", "pot-au-feu", "sushi",
            "tacos", "burrito", "kebab", "sandwich", "croque-monsieur",
            "hot-dog", "risotto", "paella", "curry", "crêpe",
            "gaufre", "pancakes", "tarte", "gâteau", "gâteau au chocolat",
            "tarte aux pommes", "tarte au citron", "tiramisu", "mousse au chocolat", "crème brûlée",
            "éclair", "profiterole", "macaron", "madeleine", "glace",
            "glace à la vanille", "glace au chocolat", "sorbet", "flan", "biscuit",
            "muffin", "brownie", "donut", "chocolat", "bonbons",
            "nougat", "réglisse", "chips", "pop-corn", "noix",
            "cacahuètes", "amandes", "noisettes", "pistaches", "miel",
            "confiture", "pâte à tartiner", "mayonnaise", "ketchup", "moutarde",
            "sauce soja", "vinaigre", "huile d'olive", "sucre", "sel",
            "poivre", "eau", "eau gazeuse", "limonade", "cola",
            "jus d'orange", "jus de pomme", "thé", "thé vert", "tisane",
            "café", "expresso", "cappuccino", "chocolat chaud", "milk-shake",
            "smoothie", "bière", "vin blanc", "vin rouge", "rosé",
            "champagne", "cidre", "whisky", "vodka", "rhum",
            "gin", "tequila", "cognac", "cocktail", "sangria",
            "vin chaud", "pastis", "kir", "houmous", "guacamole",
            "pesto", "tapenade", "foie gras", "escargots", "huile",
        ]),
        WordCategory(id: "countries", symbol: "globe.europe.africa.fill", name: "Pays", words: [
            "Afghanistan", "Afrique du Sud", "Albanie", "Algérie", "Allemagne",
            "Andorre", "Angola", "Arabie saoudite", "Argentine", "Arménie",
            "Australie", "Autriche", "Azerbaïdjan", "Bahamas", "Bahreïn",
            "Bangladesh", "Barbade", "Belgique", "Belize", "Bénin",
            "Bhoutan", "Biélorussie", "Birmanie", "Bolivie", "Bosnie-Herzégovine",
            "Botswana", "Brésil", "Brunei", "Bulgarie", "Burkina Faso",
            "Burundi", "Cambodge", "Cameroun", "Canada", "Cap-Vert",
            "Chili", "Chine", "Chypre", "Colombie", "Comores",
            "Congo", "Corée du Nord", "Corée du Sud", "Costa Rica", "Côte d'Ivoire",
            "Croatie", "Cuba", "Danemark", "Djibouti", "Dominique",
            "Égypte", "Émirats arabes unis", "Équateur", "Érythrée", "Espagne",
            "Estonie", "États-Unis", "Éthiopie", "Fidji", "Finlande",
            "France", "Gabon", "Gambie", "Géorgie", "Ghana",
            "Grèce", "Grenade", "Guatemala", "Guinée", "Guinée équatoriale",
            "Guyana", "Haïti", "Honduras", "Hongrie", "Inde",
            "Indonésie", "Irak", "Iran", "Irlande", "Islande",
            "Israël", "Italie", "Jamaïque", "Japon", "Jordanie",
            "Kazakhstan", "Kenya", "Kirghizistan", "Kiribati", "Koweït",
            "Laos", "Lesotho", "Lettonie", "Liban", "Liberia",
            "Libye", "Liechtenstein", "Lituanie", "Luxembourg", "Macédoine du Nord",
            "Madagascar", "Malaisie", "Malawi", "Maldives", "Mali",
            "Malte", "Maroc", "Maurice", "Mauritanie", "Mexique",
            "Micronésie", "Moldavie", "Monaco", "Mongolie", "Monténégro",
            "Mozambique", "Namibie", "Nauru", "Népal", "Nicaragua",
            "Niger", "Nigeria", "Norvège", "Nouvelle-Zélande", "Oman",
            "Ouganda", "Ouzbékistan", "Pakistan", "Palaos", "Panama",
            "Papouasie-Nouvelle-Guinée", "Paraguay", "Pays-Bas", "Pérou", "Philippines",
            "Pologne", "Portugal", "Qatar", "République dominicaine", "République tchèque",
            "Roumanie", "Royaume-Uni", "Russie", "Rwanda", "Saint-Marin",
            "Salvador", "Samoa", "Sénégal", "Serbie", "Seychelles",
            "Sierra Leone", "Singapour", "Slovaquie", "Slovénie", "Somalie",
            "Soudan", "Sri Lanka", "Suède", "Suisse", "Suriname",
            "Syrie", "Tadjikistan", "Tanzanie", "Tchad", "Thaïlande",
            "Timor oriental", "Togo", "Tonga", "Trinité-et-Tobago", "Tunisie",
            "Turkménistan", "Turquie", "Tuvalu", "Ukraine", "Uruguay",
            "Vanuatu", "Venezuela", "Viêt Nam", "Yémen", "Zambie",
            "Zimbabwe",
        ]),
        WordCategory(id: "sports", symbol: "figure.run", name: "Sports", words: [
            "football", "basketball", "tennis", "volleyball", "handball",
            "hockey sur glace", "natation", "athlétisme", "gymnastique", "cyclisme",
            "boxe", "lutte", "judo", "karaté", "taekwondo",
            "escrime", "tir à l'arc", "tir", "aviron", "canoë",
            "voile", "surf", "planche à voile", "kitesurf", "plongée",
            "water-polo", "natation synchronisée", "plongeon", "triathlon", "marathon",
            "sprint", "course de haies", "saut en hauteur", "saut en longueur", "triple saut",
            "saut à la perche", "lancer du javelot", "lancer du disque", "lancer du marteau", "lancer du poids",
            "décathlon", "heptathlon", "ski alpin", "snowboard", "ski de fond",
            "saut à ski", "biathlon", "bobsleigh", "luge", "skeleton",
            "patinage artistique", "patinage de vitesse", "curling", "golf", "rugby",
            "football américain", "baseball", "softball", "cricket", "hockey sur gazon",
            "crosse", "badminton", "squash", "tennis de table", "roller",
            "skateboard", "BMX", "VTT", "course sur route", "cyclisme sur piste",
            "crossfit", "haltérophilie", "musculation", "yoga", "pilates",
            "aérobic", "zumba", "danse", "ballet", "hip-hop",
            "breakdance", "escalade", "randonnée", "alpinisme", "parachutisme",
            "parapente", "deltaplane", "saut à l'élastique", "équitation", "saut d'obstacles",
            "dressage", "polo", "course hippique", "sport automobile", "Formule 1",
            "rallye", "motocross", "karting", "bowling", "billard",
            "fléchettes", "échecs", "pétanque", "padel", "beach-volley",
            "futsal", "aïkido", "kendo", "kung-fu", "capoeira",
            "muay-thaï", "kickboxing", "MMA", "course à pied", "jogging",
            "marche nordique", "escalade de bloc", "parkour", "freerunning", "course d'orientation",
            "course de relais", "pentathlon moderne", "duathlon", "cross", "ski nautique",
            "wakeboard", "kayak", "rafting", "spéléologie", "pêche",
            "pêche sportive", "tir sportif", "fitness", "stretching", "patins à roulettes",
            "trampoline", "trottinette", "course de fond", "demi-fond", "steeple",
            "jeu de boules", "cécifoot", "goalball", "basket fauteuil", "voile légère",
        ]),
        WordCategory(id: "jobs", symbol: "briefcase.fill", name: "Métiers", words: [
            "médecin", "infirmier", "dentiste", "vétérinaire", "pharmacien",
            "chirurgien", "pédiatre", "psychiatre", "ambulancier", "kinésithérapeute",
            "opticien", "radiologue", "avocat", "juge", "procureur",
            "notaire", "policier", "pompier", "soldat", "officier",
            "douanier", "enseignant", "professeur", "éducateur", "assistant social",
            "psychologue", "bibliothécaire", "ingénieur", "architecte", "informaticien",
            "programmeur", "électricien", "plombier", "menuisier", "charpentier",
            "maçon", "couvreur", "peintre", "serrurier", "soudeur",
            "mécanicien", "garagiste", "agriculteur", "jardinier", "forestier",
            "pêcheur", "cuisinier", "boulanger", "pâtissier", "boucher",
            "serveur", "barman", "coiffeur", "esthéticienne", "tailleur",
            "cordonnier", "horloger", "bijoutier", "comptable", "conseiller fiscal",
            "banquier", "entrepreneur", "manager", "directeur", "commerçant",
            "vendeur", "caissier", "logisticien", "chauffeur de camion", "chauffeur de taxi",
            "chauffeur de bus", "pilote", "hôtesse de l'air", "conducteur de train", "marin",
            "capitaine", "journaliste", "rédacteur", "photographe", "cameraman",
            "acteur", "réalisateur", "chanteur", "musicien", "danseur",
            "artiste", "sculpteur", "graphiste", "designer", "écrivain",
            "traducteur", "interprète", "sportif", "entraîneur", "coach sportif",
            "diététicien", "scientifique", "chimiste", "physicien", "biologiste",
            "mathématicien", "astronaute", "géologue", "météorologue", "urbaniste",
            "architecte d'intérieur", "mineur", "brasseur", "artisan", "concierge",
            "agent d'entretien", "gardien", "détective", "fleuriste", "libraire",
            "pompiste", "facteur", "éboueur", "sommelier", "fromager",
            "poissonnier", "vigneron", "berger", "apiculteur", "serrurier-métallier",
        ]),
        WordCategory(id: "objects", symbol: "lightbulb.fill", name: "Objets du quotidien", words: [
            "brosse à dents", "dentifrice", "savon", "serviette", "peigne",
            "brosse", "miroir", "ciseaux", "coupe-ongles", "rasoir",
            "sèche-cheveux", "shampoing", "gel douche", "gant de toilette", "éponge",
            "papier toilette", "baignoire", "douche", "lavabo", "assiette",
            "bol", "tasse", "verre", "casserole", "poêle",
            "couteau", "fourchette", "cuillère", "petite cuillère", "fouet",
            "planche à découper", "ouvre-boîte", "tire-bouchon", "râpe", "passoire",
            "balance de cuisine", "bouilloire", "grille-pain", "mixeur", "cafetière",
            "micro-ondes", "four", "réfrigérateur", "congélateur", "lave-vaisselle",
            "cuisinière", "essuie-tout", "papier aluminium", "film alimentaire", "poubelle",
            "balai", "pelle", "serpillière", "aspirateur", "produit nettoyant",
            "liquide vaisselle", "lessive", "machine à laver", "sèche-linge", "fer à repasser",
            "planche à repasser", "panier à linge", "pince à linge", "canapé", "fauteuil",
            "chaise", "table", "bureau", "lit", "matelas",
            "oreiller", "couette", "drap", "armoire", "étagère",
            "commode", "table de nuit", "lampe", "lampadaire", "rideau",
            "store", "tapis", "paillasson", "cadre photo", "horloge",
            "réveil", "télévision", "télécommande", "radio", "enceinte",
            "ordinateur", "ordinateur portable", "clavier", "souris", "écran",
            "imprimante", "téléphone", "chargeur", "multiprise", "casque",
            "appareil photo", "pile", "ampoule", "marteau", "tournevis",
            "pince", "scie", "perceuse", "vis", "clous",
            "ruban adhésif", "mètre ruban", "niveau à bulle", "échelle", "seau",
            "arrosoir", "tuyau d'arrosage", "bêche", "râteau", "tondeuse",
            "clé", "cadenas", "poignée de porte", "boîte aux lettres", "parapluie",
            "sac à dos", "sac", "portefeuille", "porte-monnaie", "lunettes",
            "lunettes de soleil", "montre", "bague", "collier", "bracelet",
            "chapeau", "bonnet", "écharpe", "gants", "veste",
            "manteau", "pantalon", "chemise", "tee-shirt", "pull",
            "robe", "jupe", "chaussettes", "sous-vêtements", "chaussures",
            "bottes", "sandales", "ceinture", "cravate", "tablier",
            "pyjama", "peignoir", "chaussons", "crayon", "stylo",
            "gomme", "règle", "agrafeuse", "perforatrice", "trombones",
            "enveloppe", "carnet", "calendrier", "classeur", "colle",
            "post-it", "encre", "livre", "journal", "magazine",
            "cartes à jouer", "dé", "puzzle", "bougie", "allumettes",
            "briquet", "vase", "pot de fleurs", "cendrier", "coussin",
            "couverture", "thermomètre", "pansement", "comprimé", "coton-tige",
            "pince à épiler", "ventilateur", "climatiseur", "gourde", "thermos",
            "boîte à déjeuner", "plateau", "sous-verre", "manique", "torchon",
            "rouleau à pâtisserie", "presse-ail", "économe", "presse-agrumes", "minuteur",
            "lampe de poche", "plaque de cuisson", "moule à gâteau", "saladier", "cabas",
            "trousse", "agenda", "cahier", "feutre", "surligneur",
        ]),
        WordCategory(id: "instruments", symbol: "guitars.fill", name: "Instruments de musique", words: [
            "violon", "alto", "violoncelle", "contrebasse", "harpe",
            "guitare", "guitare acoustique", "guitare électrique", "guitare basse", "ukulélé",
            "mandoline", "banjo", "luth", "cithare", "piano",
            "piano à queue", "clavecin", "orgue", "accordéon", "harmonica",
            "concertina", "flûte", "flûte traversière", "flûte à bec", "piccolo",
            "hautbois", "cor anglais", "basson", "contrebasson", "clarinette",
            "clarinette basse", "saxophone", "saxophone alto", "saxophone ténor", "saxophone soprano",
            "saxophone baryton", "trompette", "cornet", "cor d'harmonie", "bugle",
            "trombone", "trombone basse", "tuba", "euphonium", "sousaphone",
            "batterie", "timbales", "caisse claire", "cymbales", "tambourin",
            "triangle", "carillon", "glockenspiel", "xylophone", "marimba",
            "vibraphone", "tambour", "grosse caisse", "bongo", "conga",
            "djembé", "cajón", "castagnettes", "maracas", "claves",
            "steel drum", "célesta", "thérémine", "synthétiseur", "clavier",
            "piano électrique", "cornemuse", "didgeridoo", "flûte de pan", "ocarina",
            "tin whistle", "sitar", "tabla", "tampura", "shamisen",
            "koto", "erhu", "balalaïka", "bouzouki", "oud",
            "darbouka", "kalimba", "mbira", "kora", "bandonéon",
            "mélodica", "handpan", "kazoo", "vielle à roue", "cornemuse écossaise",
            "guimbarde", "crécelle", "ondes Martenot", "harpe celtique", "harmonium",
            "épinette", "biniou", "accordéon diatonique",
        ]),
        WordCategory(id: "landmarks", symbol: "building.columns.fill", name: "Monuments & Sites", words: [
            "tour Eiffel", "Arc de triomphe", "Notre-Dame de Paris", "le Louvre", "château de Versailles",
            "Sacré-Cœur", "Mont-Saint-Michel", "palais des Papes", "pont du Gard", "château de Chambord",
            "château de Chenonceau", "Carcassonne", "Côte d'Azur", "mont Blanc", "les Calanques",
            "gorges du Verdon", "dune du Pilat", "cathédrale de Chartres", "cathédrale de Reims", "Puy de Dôme",
            "statue de la Liberté", "Grande Muraille de Chine", "tour de Pise", "Colisée", "Taj Mahal",
            "Machu Picchu", "Acropole", "Stonehenge", "pyramides de Gizeh", "le Sphinx",
            "Angkor Vat", "Burj Khalifa", "opéra de Sydney", "Big Ben", "Tower Bridge",
            "porte de Brandebourg", "chutes du Niagara", "Grand Canyon", "mont Everest", "mont Fuji",
            "Santorin", "Ayers Rock", "chutes Victoria", "l'Amazone", "le Sahara",
            "îles Galápagos", "Parthénon", "cité du Vatican", "basilique Saint-Pierre", "chapelle Sixtine",
            "fontaine de Trevi", "Alhambra", "Sagrada Família", "parc Güell", "Sainte-Sophie",
            "Mosquée bleue", "dôme du Rocher", "mur des Lamentations", "Pétra", "Borobudur",
            "Cité interdite", "Grand Bouddha", "palais du Potala", "temple Senso-ji", "Fushimi Inari",
            "sanctuaire d'Itsukushima", "forêt de bambous d'Arashiyama", "Neuschwanstein", "cathédrale de Cologne", "mur de Berlin",
            "Reichstag", "pyramide de Khéops", "temple de Karnak", "temple de Louxor", "Abou Simbel",
            "Kilimandjaro", "Serengeti", "delta de l'Okavango", "montagne de la Table", "parc Kruger",
            "Teotihuacan", "Chichén Itzá", "Tikal", "Christ Rédempteur", "Pain de Sucre",
            "chutes d'Iguazú", "Salar de Uyuni", "Torres del Paine", "Bora Bora", "Milford Sound",
            "Uluru", "Grande Barrière de corail", "Yellowstone", "Yosemite", "Monument Valley",
            "Bryce Canyon", "Zion", "vallée de la Mort", "mont Rushmore", "Golden Gate Bridge",
            "Empire State Building", "Chrysler Building", "pont de Brooklyn", "Maison-Blanche", "Lincoln Memorial",
            "Times Square", "Central Park", "panneau Hollywood", "Las Vegas Strip", "Rocheuses",
            "Everglades", "Cap Canaveral", "château d'Édimbourg", "palais de Buckingham", "château de Windsor",
            "tour de Londres", "observatoire de Greenwich", "falaises de Moher", "Chaussée des Géants", "mur d'Hadrien",
            "Loch Ness", "Pompéi", "Forum romain", "Panthéon", "château Saint-Ange",
            "place Saint-Marc", "Grand Canal", "Cinque Terre", "côte amalfitaine", "Dubrovnik",
            "lacs de Plitvice", "grotte bleue de Capri", "Olympie", "Delphes", "les Météores",
            "château de Schönbrunn", "cathédrale Saint-Étienne", "Hallstatt", "château de Chillon", "Cervin",
            "Jungfraujoch", "chutes du Rhin", "glacier d'Aletsch", "Atomium", "Manneken-Pis",
            "moulins de Kinderdijk", "maison d'Anne Frank", "Rijksmuseum", "Tivoli de Copenhague", "geyser d'Islande",
            "aurores boréales", "fjords de Norvège", "Geirangerfjord", "tour CN", "parc national de Banff",
            "Kremlin", "cathédrale Saint-Basile", "place Rouge", "château de Prague", "Alcázar de Séville",
        ]),
    ]
}
