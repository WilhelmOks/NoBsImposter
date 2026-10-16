//
//  Spanish.swift
//  NoBsImposter
//
//  Spanish (es).
//

import Foundation

struct SpanishStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Encuentra al traidor" }

    // MARK: How to play
    var howToPlay: String { "Cómo jugar" }
    var howToPlayIntro: String {
        "Imposter es un juego de fiesta para 3-12 jugadores que comparten un solo dispositivo."
    }
    var howToPlaySteps: [String] {
        [
            "Prepara la ronda: Elige cuántos jugadores e impostores habrá, selecciona las categorías y, si quieres, pon nombre a los jugadores.",
            "Pasa el dispositivo: Cada jugador sostiene la carta para ver en privado su palabra secreta. Uno o varios impostores no reciben la palabra.",
            "Da pistas: Empezando por el jugador indicado, cada uno dice por turnos una pista breve sobre la palabra, sin decirla directamente.",
            "Debatid y votad: Comentadlo entre todos y votad juntos quién es el impostor.",
            "Revelad: Toca \"Revelar solución\" para descubrir la palabra y los impostores.",
        ]
    }
    var howToPlayTip: String {
        "El impostor gana si no lo descubren, o si adivina la palabra secreta. Los demás ganan si desenmascaran al impostor."
    }

    // MARK: Setup
    var players: String { "Jugadores" }
    var imposters: String { "Impostores" }
    var categories: String { "Categorías" }
    var names: String { "Nombres" }
    var namesHint: String { "Opcional: déjalo vacío para \"Jugador 1\", \"Jugador 2\" …" }
    var all: String { "Todas" }
    var none: String { "Ninguna" }
    var startGame: String { "Empezar partida" }
    var selectAtLeastOneCategory: String { "Elige al menos una categoría" }
    var imposterKnowsCategoryLabel: String { "El impostor conoce la categoría" }
    var keepScreenOnLabel: String { "Mantener la pantalla encendida" }
    var allCategories: String { "Todas las categorías" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) de \(total)" }

    // MARK: Cancel
    var cancel: String { "Cancelar" }
    var quitGameTitle: String { "¿Salir de la partida?" }
    var quitGameMessage: String { "Se perderá la ronda actual." }

    // MARK: Reveal
    var tapToReveal: String { "Toca para revelar" }
    var holdToReveal: String { "Mantén pulsado para revelar" }
    var next: String { "Siguiente" }
    var done: String { "Listo" }
    var youAreImposter: String { "¡Eres el impostor!" }
    var imposterHint: String {
        "Solo conoces la categoría. Averigua la palabra de los demás y no te delates."
    }
    var imposterHintNoCategory: String {
        "Averigua la palabra de los demás y no te delates."
    }
    var categoryLabel: String { "Categoría" }
    var passDevicePrefix: String { "Pasa el dispositivo a " }
    func passDeviceTo(name: String) -> String { "Pasa el dispositivo a \(name)" }
    func playerTitle(_ n: Int) -> String { "Jugador \(n)" }

    // MARK: Summary
    var everyoneReady: String { "¡Todos listos!" }
    var discussHint: String {
        "Describid vuestra palabra por turnos y luego votad quién es el impostor."
    }
    var startingPlayer: String { "Jugador inicial" }
    var startsDescribing: String { "empieza a describir" }
    var newRound: String { "Nueva ronda" }
    var backToMenu: String { "Volver al menú" }
    var revealSolution: String { "Revelar solución" }
    var revealSolutionTitle: String { "¿Revelar la solución?" }
    var revealSolutionMessage: String { "Se mostrarán la palabra y los impostores." }
    var theWordWas: String { "La palabra era" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "Hay 1 impostor entre vosotros" : "Hay \(count) impostores entre vosotros"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "El impostor era" : "Los impostores eran"
    }
}

// MARK: - Spanish word data

extension WordData {
    static let spanishCategories: [WordCategory] = [
        WordCategory(id: "celebrities", symbol: "star.fill", name: "Famosos", words: [
            "Penélope Cruz", "Antonio Banderas", "Javier Bardem", "Pedro Almodóvar", "Salvador Dalí",
            "Pablo Picasso", "Miguel de Cervantes", "Federico García Lorca", "Francisco de Goya", "Diego Velázquez",
            "Rafael Nadal", "Fernando Alonso", "Pau Gasol", "Andrés Iniesta", "Xavi Hernández",
            "Sergio Ramos", "Iker Casillas", "David Villa", "Fernando Torres", "Carlos Alcaraz",
            "Rosalía", "Alejandro Sanz", "Enrique Iglesias", "Julio Iglesias", "Plácido Domingo",
            "Montserrat Caballé", "David Bisbal", "Pablo Alborán", "Joan Miró", "Antoni Gaudí",
            "Shakira", "Gabriel García Márquez", "Pablo Neruda", "Frida Kahlo", "Diego Rivera",
            "Lionel Messi", "Diego Maradona", "Pelé", "Neymar", "Ronaldinho",
            "Cristiano Ronaldo", "Sofía Vergara", "Salma Hayek", "Gael García Bernal", "Ricky Martin",
            "Luis Fonsi", "Daddy Yankee", "Bad Bunny", "J Balvin", "Maluma",
            "Thalía", "Juanes", "Carlos Santana", "Marc Anthony", "Celia Cruz",
            "Che Guevara", "Eva Perón", "Simón Bolívar", "Miguel Ángel", "Leonardo da Vinci",
            "Albert Einstein", "Isaac Newton", "Galileo Galilei", "Marie Curie", "Nikola Tesla",
            "Charles Darwin", "Stephen Hawking", "Cristóbal Colón", "Napoleón Bonaparte", "Julio César",
            "Cleopatra", "Nelson Mandela", "Mahatma Gandhi", "Martin Luther King", "Abraham Lincoln",
            "Winston Churchill", "Barack Obama", "Donald Trump", "Michelle Obama", "Papa Francisco",
            "Beethoven", "Mozart", "Bach", "Vivaldi", "Chopin",
            "Elvis Presley", "Michael Jackson", "Freddie Mercury", "John Lennon", "Paul McCartney",
            "Bob Marley", "Madonna", "Beyoncé", "Rihanna", "Lady Gaga",
            "Taylor Swift", "Ariana Grande", "Dua Lipa", "Billie Eilish", "Adele",
            "Ed Sheeran", "Bruno Mars", "The Weeknd", "Justin Bieber", "Drake",
            "Eminem", "Snoop Dogg", "Bob Dylan", "Frank Sinatra", "Whitney Houston",
            "Tina Turner", "Amy Winehouse", "David Bowie", "Prince", "Mick Jagger",
            "Leonardo DiCaprio", "Brad Pitt", "Tom Cruise", "Tom Hanks", "Johnny Depp",
            "Robert De Niro", "Al Pacino", "Morgan Freeman", "Denzel Washington", "Will Smith",
            "Keanu Reeves", "George Clooney", "Harrison Ford", "Arnold Schwarzenegger", "Sylvester Stallone",
            "Jim Carrey", "Robin Williams", "Jack Nicholson", "Clint Eastwood", "Daniel Craig",
            "Angelina Jolie", "Jennifer Lopez", "Scarlett Johansson", "Julia Roberts", "Meryl Streep",
            "Nicole Kidman", "Emma Watson", "Natalie Portman", "Sandra Bullock", "Charlize Theron",
            "Audrey Hepburn", "Marilyn Monroe", "Grace Kelly", "Sophia Loren", "Charlie Chaplin",
            "Bruce Lee", "Jackie Chan", "Oprah Winfrey", "Elon Musk", "Bill Gates",
            "Steve Jobs", "Mark Zuckerberg", "Jeff Bezos", "Walt Disney", "Coco Chanel",
            "Giorgio Armani", "Cristóbal Balenciaga", "Paco Rabanne", "Karl Lagerfeld", "Valentino Rossi",
            "Lewis Hamilton", "Michael Schumacher", "Michael Jordan", "LeBron James", "Kobe Bryant",
            "Usain Bolt", "Muhammad Ali", "Mike Tyson", "Tiger Woods", "Roger Federer",
            "Novak Djokovic", "Serena Williams", "Zinedine Zidane", "Ronaldo Nazário", "Zlatan Ibrahimović",
            "Kylian Mbappé", "Luka Modrić", "Sergio Busquets", "Carles Puyol", "Raúl González",
            "Miguel Induráin", "Alberto Contador", "Severiano Ballesteros", "Jon Rahm", "Marc Márquez",
            "William Shakespeare", "Miguel de Unamuno", "Mario Vargas Llosa", "Jorge Luis Borges", "Isabel Allende",
            "Agatha Christie", "Stephen King", "J.K. Rowling", "Ernest Hemingway", "Antonio Machado",
        ]),
        WordCategory(id: "movies", symbol: "film.fill", name: "Películas", words: [
            "El padrino", "Lo que el viento se llevó", "Casablanca", "Ciudadano Kane", "Titanic",
            "Avatar", "La guerra de las galaxias", "Parque Jurásico", "El caballero oscuro", "El silencio de los corderos",
            "Forrest Gump", "Pulp Fiction", "Matrix", "Gladiator", "Braveheart",
            "American Beauty", "El club de la lucha", "Uno de los nuestros", "Psicosis", "El exorcista",
            "Tiburón", "E.T. el extraterrestre", "En busca del arca perdida", "La jungla de cristal", "Rambo",
            "Rocky", "Terminator", "Terminator 2 el juicio final", "Depredador", "Alien el octavo pasajero",
            "Aliens el regreso", "Independence Day", "Men in Black", "Armageddon", "La tormenta perfecta",
            "Marte", "Gravity", "Interstellar", "Origen", "Tenet",
            "Dunkerque", "Memento", "El truco final", "Salvar al soldado Ryan", "Apocalypse Now",
            "La chaqueta metálica", "Platoon", "El pianista", "Hotel Ruanda", "Diamante de sangre",
            "Invictus", "El último mohicano", "Bailando con lobos", "El renacido", "Seven",
            "Zodiac", "Erin Brockovich", "Una mente maravillosa", "El diablo viste de Prada", "Una rubia muy legal",
            "El diario de Bridget Jones", "Pretty Woman", "Algo pasa con Mary", "American Pie", "Resacón en Las Vegas",
            "Scary Movie", "La profecía", "Poltergeist", "It", "Déjame salir",
            "Hereditary", "Midsommar", "Un lugar tranquilo", "A ciegas", "Saw",
            "Scream", "Pesadilla en Elm Street", "La noche de Halloween", "Viernes 13", "Chinatown",
            "El apartamento", "Con faldas y a lo loco", "El gran dictador", "Tiempos modernos", "La quimera del oro",
            "Ben-Hur", "Lawrence de Arabia", "Espartaco", "Cleopatra", "Sonrisas y lágrimas",
            "West Side Story", "Grease", "Fiebre del sábado noche", "Dirty Dancing", "Footloose",
            "Moulin Rouge", "Chicago", "La La Land", "Mamma Mia", "Bohemian Rhapsody",
            "Rocketman", "Whiplash", "Birdman", "Parásitos", "Roma",
            "Historia de un matrimonio", "El irlandés", "El lobo de Wall Street", "Infiltrados", "Kill Bill",
            "Jackie Brown", "Los odiosos ocho", "Django desencadenado", "No es país para viejos", "Pozos de ambición",
            "Drive", "Mad Max", "Mad Max Furia en la carretera", "Waterworld", "2001 una odisea del espacio",
            "El planeta de los simios", "Blade Runner", "El quinto elemento", "Contact", "Atrápame si puedes",
            "La terminal", "Lincoln", "El puente de los espías", "1917", "Oppenheimer",
            "Barbie", "Todo a la vez en todas partes", "Top Gun", "Top Gun Maverick", "La momia",
            "Jumanji", "Noche en el museo", "Spider-Man", "Iron Man", "Thor",
            "Capitán América", "Los Vengadores", "Vengadores Endgame", "Vengadores Infinity War", "Guardianes de la galaxia",
            "Black Panther", "Doctor Strange", "Ant-Man", "Deadpool", "X-Men",
            "Logan", "Batman", "Batman Begins", "Superman", "Wonder Woman",
            "Aquaman", "Joker", "El hobbit", "El señor de los anillos", "La comunidad del anillo",
            "Las dos torres", "El retorno del rey", "Harry Potter y la piedra filosofal", "Harry Potter y la cámara secreta", "Harry Potter y el prisionero de Azkaban",
            "Animales fantásticos", "Piratas del Caribe", "Transformers", "Misión Imposible", "Casino Royale",
            "Skyfall", "Spectre", "Goldfinger", "Blancanieves y los siete enanitos", "Pinocho",
            "Fantasía", "Bambi", "Cenicienta", "Peter Pan", "La dama y el vagabundo",
            "La bella durmiente", "101 dálmatas", "El libro de la selva", "La sirenita", "La bella y la bestia",
            "Aladdín", "El rey león", "Pocahontas", "El jorobado de Notre Dame", "Hércules",
            "Mulán", "Tarzán", "Buscando a Nemo", "Los increíbles", "Ratatouille",
            "WALL-E", "Up", "Brave", "Frozen el reino del hielo", "Coco",
            "Soul", "Encanto", "Vaiana", "Enredados", "Alicia en el país de las maravillas",
            "Dumbo", "El expreso polar", "Shrek", "Shrek 2", "Kung Fu Panda",
            "Madagascar", "Ice Age", "El gato con botas", "Cómo entrenar a tu dragón", "Trolls",
            "Los Minions", "Gru mi villano favorito", "Mascotas", "Canta", "Cadena perpetua",
            "Doce hombres sin piedad", "Alguien voló sobre el nido del cuco", "El resplandor", "Cisne negro", "Réquiem por un sueño",
            "El show de Truman", "El indomable Will Hunting", "Rain Man", "El laberinto del fauno", "Mar adentro",
            "Volver", "Todo sobre mi madre", "Ocho apellidos vascos", "Campeones", "La vida es bella",
        ]),
        WordCategory(id: "animals", symbol: "pawprint.fill", name: "Animales", words: [
            "perro", "gato", "caballo", "vaca", "cerdo",
            "oveja", "cabra", "burro", "conejo", "ratón",
            "rata", "hámster", "cobaya", "ardilla", "zorro",
            "lobo", "oso", "elefante", "león", "tigre",
            "leopardo", "guepardo", "jaguar", "puma", "lince",
            "hiena", "suricata", "rinoceronte", "hipopótamo", "jirafa",
            "cebra", "ñu", "búfalo", "bisonte", "yak",
            "camello", "dromedario", "llama", "alpaca", "reno",
            "alce", "ciervo", "corzo", "jabalí", "tejón",
            "marta", "comadreja", "nutria", "castor", "erizo",
            "topo", "murciélago", "orangután", "chimpancé", "gorila",
            "gibón", "macaco", "babuino", "lémur", "koala",
            "canguro", "wombat", "zarigüeya", "armadillo", "perezoso",
            "oso hormiguero", "puercoespín", "mapache", "mofeta", "delfín",
            "ballena", "ballena azul", "yubarta", "orca", "narval",
            "foca", "morsa", "león marino", "oso polar", "zorro ártico",
            "leopardo de las nieves", "mangosta", "serval", "ocelote", "águila",
            "águila calva", "halcón", "azor", "ratonero", "búho",
            "lechuza", "loro", "cacatúa", "guacamayo", "periquito",
            "canario", "paloma", "gorrión", "mirlo", "petirrojo",
            "herrerillo", "pinzón", "estornino", "golondrina", "vencejo",
            "cuco", "pájaro carpintero", "urraca", "cuervo", "corneja",
            "arrendajo", "cigüeña", "garza", "flamenco", "pelícano",
            "gaviota", "pato", "ganso", "cisne", "pingüino",
            "avestruz", "pavo real", "pavo", "faisán", "perdiz",
            "codorniz", "gallina", "gallo", "cocodrilo", "caimán",
            "lagarto", "gecko", "camaleón", "iguana", "dragón de Komodo",
            "tortuga", "serpiente", "pitón", "cobra", "serpiente de cascabel",
            "rana", "sapo", "salamandra", "tritón", "ajolote",
            "carpa", "lucio", "salmón", "trucha", "atún",
            "tiburón", "tiburón martillo", "gran tiburón blanco", "raya", "anguila",
            "arenque", "sardina", "calamar", "pulpo", "estrella de mar",
            "medusa", "coral", "cangrejo", "langosta", "gamba",
            "mejillón", "caracol", "abeja", "avispa", "hormiga",
            "mariposa", "libélula", "escarabajo", "araña", "escorpión",
        ]),
        WordCategory(id: "food", symbol: "fork.knife", name: "Comida y bebida", words: [
            "manzana", "pera", "plátano", "naranja", "limón",
            "lima", "fresa", "frambuesa", "mora", "arándano",
            "cereza", "ciruela", "melocotón", "albaricoque", "mango",
            "piña", "sandía", "melón", "uva", "kiwi",
            "higo", "dátil", "coco", "papaya", "aguacate",
            "granada", "mandarina", "pomelo", "grosella", "caqui",
            "zanahoria", "patata", "tomate", "pepino", "pimiento",
            "cebolla", "ajo", "brócoli", "coliflor", "espinaca",
            "lechuga", "calabacín", "berenjena", "maíz", "guisantes",
            "judías", "lentejas", "garbanzos", "apio", "puerro",
            "espárrago", "rábano", "col", "col roja", "col de Bruselas",
            "remolacha", "hinojo", "alcachofa", "champiñón", "setas",
            "jengibre", "calabaza", "boniato", "pan", "pan integral",
            "panecillo", "cruasán", "tostada", "rosquilla", "baguette",
            "arroz", "pasta", "espaguetis", "macarrones", "lasaña",
            "cuscús", "quinoa", "avena", "cereales", "mantequilla",
            "margarina", "queso", "queso manchego", "parmesano", "mozzarella",
            "queso de cabra", "requesón", "yogur", "nata", "leche",
            "huevo", "huevos revueltos", "huevo frito", "tortilla", "carne",
            "pollo", "cerdo", "ternera", "cordero", "bacon",
            "jamón", "jamón serrano", "chorizo", "salchichón", "morcilla",
            "lomo", "filete", "hamburguesa", "albóndiga", "pescado",
            "salmón", "atún", "trucha", "bacalao", "merluza",
            "gambas", "mejillones", "pulpo", "calamares", "sopa",
            "gazpacho", "caldo", "cocido", "lentejas estofadas", "fabada",
            "paella", "tortilla de patatas", "croquetas", "patatas bravas", "pisto",
            "empanada", "pizza", "patatas fritas", "puré de patata", "ensalada",
            "ensaladilla rusa", "pulpo a la gallega", "sushi", "tacos", "burrito",
            "kebab", "sándwich", "bocadillo", "perrito caliente", "risotto",
            "curry", "tortitas", "gofre", "crepe", "tarta",
            "pastel", "tarta de queso", "tarta de manzana", "tarta de chocolate", "tiramisú",
            "flan", "natillas", "arroz con leche", "crema catalana", "churros",
            "helado", "helado de vainilla", "helado de chocolate", "helado de fresa", "sorbete",
            "galleta", "magdalena", "brownie", "dónut", "turrón",
            "chocolate", "caramelos", "gominolas", "regaliz", "patatas de bolsa",
            "palomitas", "frutos secos", "cacahuetes", "almendras", "anacardos",
            "nueces", "avellanas", "pistachos", "miel", "mermelada",
            "mayonesa", "kétchup", "mostaza", "salsa de soja", "vinagre",
            "aceite de oliva", "azúcar", "sal", "pimienta", "agua",
            "agua con gas", "limonada", "refresco de cola", "zumo de naranja", "zumo de manzana",
            "té", "té verde", "manzanilla", "café", "café solo",
            "café con leche", "capuchino", "cacao", "batido", "cerveza",
            "vino blanco", "vino tinto", "rosado", "cava", "champán",
            "sangría", "sidra", "whisky", "vodka", "ron",
            "ginebra", "tequila", "coñac", "licor", "cóctel",
            "mojito", "hummus", "guacamole", "alioli", "salmorejo",
        ]),
        WordCategory(id: "countries", symbol: "globe.europe.africa.fill", name: "Países", words: [
            "Afganistán", "Egipto", "Albania", "Argelia", "Angola",
            "Argentina", "Armenia", "Azerbaiyán", "Etiopía", "Australia",
            "Guinea Ecuatorial", "Bahamas", "Baréin", "Bangladés", "Barbados",
            "Bélgica", "Belice", "Benín", "Bután", "Bolivia",
            "Bosnia y Herzegovina", "Botsuana", "Brasil", "Brunéi", "Bulgaria",
            "Burkina Faso", "Burundi", "Chile", "China", "Costa Rica",
            "Dinamarca", "República Democrática del Congo", "Alemania", "Dominica", "República Dominicana",
            "Yibuti", "Ecuador", "El Salvador", "Costa de Marfil", "Eritrea",
            "Estonia", "Fiyi", "Finlandia", "Francia", "Gabón",
            "Gambia", "Georgia", "Ghana", "Granada", "Grecia",
            "Guatemala", "Guinea", "Guinea-Bisáu", "Guyana", "Haití",
            "Honduras", "India", "Indonesia", "Irak", "Irán",
            "Irlanda", "Islandia", "Israel", "Italia", "Jamaica",
            "Japón", "Yemen", "Jordania", "Camboya", "Camerún",
            "Canadá", "Cabo Verde", "Catar", "Kazajistán", "Kenia",
            "Kirguistán", "Kiribati", "Colombia", "Comoras", "Congo",
            "Kosovo", "Croacia", "Cuba", "Kuwait", "Laos",
            "Lesoto", "Letonia", "Líbano", "Liberia", "Libia",
            "Lituania", "Luxemburgo", "Madagascar", "Malaui", "Malasia",
            "Maldivas", "Malí", "Malta", "Marruecos", "Islas Marshall",
            "Mauritania", "Mauricio", "México", "Micronesia", "Moldavia",
            "Mongolia", "Montenegro", "Mozambique", "Birmania", "Namibia",
            "Nauru", "Nepal", "Nueva Zelanda", "Nicaragua", "Países Bajos",
            "Níger", "Nigeria", "Corea del Norte", "Macedonia del Norte", "Noruega",
            "Omán", "Austria", "Pakistán", "Palaos", "Panamá",
            "Papúa Nueva Guinea", "Paraguay", "Perú", "Filipinas", "Polonia",
            "Portugal", "Ruanda", "Rumanía", "Rusia", "Islas Salomón",
            "Samoa", "Zambia", "Santo Tomé y Príncipe", "Arabia Saudí", "Suecia",
            "Suiza", "Senegal", "Serbia", "Seychelles", "Sierra Leona",
            "Zimbabue", "Singapur", "Eslovaquia", "Eslovenia", "Somalia",
            "España", "Sri Lanka", "San Cristóbal y Nieves", "Santa Lucía", "San Vicente y las Granadinas",
            "Sudáfrica", "Sudán", "Corea del Sur", "Sudán del Sur", "Surinam",
            "Suazilandia", "Siria", "Tayikistán", "Tanzania", "Tailandia",
            "Timor Oriental", "Togo", "Tonga", "Trinidad y Tobago", "Chad",
            "República Checa", "Túnez", "Turkmenistán", "Turquía", "Tuvalu",
            "Uganda", "Ucrania", "Hungría", "Uruguay", "Uzbekistán",
            "Vanuatu", "Venezuela", "Emiratos Árabes Unidos", "Estados Unidos", "Reino Unido",
            "Vietnam", "Bielorrusia", "República Centroafricana", "Chipre", "Liechtenstein",
            "Andorra", "Mónaco", "San Marino", "Ciudad del Vaticano", "Sáhara Occidental",
        ]),
        WordCategory(id: "sports", symbol: "figure.run", name: "Deportes", words: [
            "fútbol", "baloncesto", "tenis", "voleibol", "balonmano",
            "hockey sobre hielo", "natación", "atletismo", "gimnasia", "ciclismo",
            "boxeo", "lucha", "judo", "kárate", "taekwondo",
            "esgrima", "tiro con arco", "tiro olímpico", "remo", "piragüismo",
            "vela", "surf", "windsurf", "kitesurf", "buceo",
            "waterpolo", "natación sincronizada", "salto de trampolín", "triatlón", "maratón",
            "velocidad", "vallas", "salto de altura", "salto de longitud", "triple salto",
            "salto con pértiga", "lanzamiento de jabalina", "lanzamiento de disco", "lanzamiento de martillo", "lanzamiento de peso",
            "decatlón", "heptatlón", "esquí", "snowboard", "esquí de fondo",
            "salto de esquí", "biatlón", "bobsleigh", "trineo", "skeleton",
            "patinaje artístico", "patinaje de velocidad", "curling", "golf", "rugby",
            "fútbol americano", "béisbol", "sóftbol", "críquet", "hockey sobre hierba",
            "lacrosse", "bádminton", "squash", "tenis de mesa", "patinaje sobre ruedas",
            "patinaje en línea", "monopatín", "BMX", "ciclismo de montaña", "halterofilia",
            "levantamiento de pesas", "culturismo", "yoga", "pilates", "aeróbic",
            "zumba", "baile", "ballet", "breakdance", "escalada",
            "búlder", "senderismo", "alpinismo", "paracaidismo", "parapente",
            "ala delta", "puenting", "equitación", "salto ecuestre", "doma clásica",
            "polo", "carreras de caballos", "automovilismo", "Fórmula 1", "rally",
            "motocross", "karting", "hockey sobre patines", "floorball", "frisbee",
            "bolos", "billar", "dardos", "ajedrez", "petanca",
            "pádel", "voley playa", "fútbol sala", "fútbol playa", "sambo",
            "aikido", "kendo", "kung-fu", "capoeira", "muay thai",
            "kickboxing", "artes marciales mixtas", "correr", "running", "marcha nórdica",
            "orientación", "carrera de relevos", "parkour", "pentatlón moderno", "duatlón",
            "carrera de obstáculos", "campo a través", "saltos de obstáculos", "esquí acuático", "motociclismo",
            "espeleología", "escalada en hielo", "monociclo", "frontón", "jai alai",
            "pelota vasca", "trampolín", "wakeboard", "bodyboard", "remo indoor",
        ]),
        WordCategory(id: "jobs", symbol: "briefcase.fill", name: "Profesiones", words: [
            "médico", "enfermero", "dentista", "veterinario", "farmacéutico",
            "cirujano", "pediatra", "psiquiatra", "paramédico", "fisioterapeuta",
            "óptico", "radiólogo", "abogado", "juez", "fiscal",
            "notario", "policía", "bombero", "soldado", "oficial",
            "agente de aduanas", "profesor", "catedrático", "maestro", "trabajador social",
            "psicólogo", "bibliotecario", "ingeniero", "arquitecto", "informático",
            "programador", "electricista", "fontanero", "carpintero", "ebanista",
            "albañil", "techador", "pintor", "cerrajero", "soldador",
            "mecánico", "mecánico de coches", "agricultor", "jardinero", "guardabosques",
            "pescador", "cocinero", "panadero", "pastelero", "carnicero",
            "camarero", "barman", "peluquero", "esteticista", "sastre",
            "zapatero", "relojero", "orfebre", "contable", "asesor fiscal",
            "banquero", "auditor", "empresario", "gerente", "director",
            "comerciante", "vendedor", "cajero", "logístico", "camionero",
            "taxista", "conductor de autobús", "piloto", "azafata", "maquinista",
            "marinero", "capitán", "periodista", "redactor", "fotógrafo",
            "cámara", "actor", "director de cine", "cantante", "músico",
            "bailarín", "artista", "escultor", "diseñador gráfico", "diseñador web",
            "escritor", "traductor", "intérprete", "deportista", "entrenador",
            "entrenador personal", "nutricionista", "científico", "químico", "físico",
            "biólogo", "matemático", "astronauta", "geólogo", "meteorólogo",
            "urbanista", "diseñador de interiores", "minero", "cervecero", "artesano",
            "conserje", "personal de limpieza", "vigilante", "detective", "funerario",
            "torero", "pescadero", "frutero", "florista", "modista",
            "costurera", "piloto de carreras", "bombero forestal", "socorrista", "guía turístico",
        ]),
        WordCategory(id: "objects", symbol: "lightbulb.fill", name: "Objetos cotidianos", words: [
            "cepillo de dientes", "pasta de dientes", "jabón", "toalla", "peine",
            "cepillo", "espejo", "tijeras de cocina", "cortaúñas", "maquinilla de afeitar",
            "secador", "champú", "gel de ducha", "esponja", "papel higiénico",
            "bañera", "ducha", "lavabo", "plato", "cuenco",
            "taza", "vaso", "olla", "sartén", "cuchillo",
            "tenedor", "cuchara", "cucharilla", "batidor", "tabla de cortar",
            "abrelatas", "sacacorchos", "rallador", "colador", "báscula de cocina",
            "hervidor", "tostadora", "batidora", "cafetera", "microondas",
            "horno", "nevera", "congelador", "lavavajillas", "cocina",
            "papel de cocina", "papel de aluminio", "film transparente", "cubo de basura", "escoba",
            "recogedor", "fregona", "aspiradora", "detergente", "lavadora",
            "secadora", "plancha", "tabla de planchar", "cesto de la ropa", "pinza de la ropa",
            "sofá", "sillón", "silla", "mesa", "escritorio",
            "cama", "colchón", "almohada", "edredón", "sábana",
            "armario", "estantería", "cómoda", "mesita de noche", "lámpara",
            "lámpara de pie", "cortina", "persiana", "alfombra", "felpudo",
            "marco de fotos", "reloj de pared", "despertador", "televisor", "mando a distancia",
            "radio", "altavoz", "ordenador", "portátil", "teclado",
            "ratón", "pantalla", "impresora", "teléfono", "móvil",
            "cargador", "regleta", "auriculares", "cámara", "pila",
            "bombilla", "martillo", "destornillador", "alicates", "sierra",
            "taladro", "tornillos", "clavos", "cinta adhesiva", "cinta métrica",
            "nivel", "escalera", "cubo", "regadera", "manguera",
            "pala", "rastrillo", "cortacésped", "llave", "candado",
            "picaporte", "buzón", "paraguas", "mochila", "bolso",
            "cartera", "monedero", "gafas", "gafas de sol", "reloj de pulsera",
            "anillo", "collar", "pulsera", "sombrero", "gorra",
            "bufanda", "guantes", "chaqueta", "abrigo", "pantalón",
            "camisa", "camiseta", "jersey", "vestido", "falda",
            "calcetines", "medias", "ropa interior", "zapatos", "botas",
            "sandalias", "cinturón", "corbata", "delantal", "pijama",
            "albornoz", "zapatillas", "lápiz", "bolígrafo", "rotulador",
            "goma de borrar", "regla", "grapadora", "perforadora", "grapas",
            "sobre", "cuaderno", "calendario", "carpeta", "pegamento",
            "notas adhesivas", "tinta", "libro", "periódico", "revista",
            "cartas", "dados", "puzle", "vela", "cerillas",
            "mechero", "jarrón", "maceta", "cenicero", "cojín",
            "manta", "termómetro", "tirita", "botiquín", "pastilla",
            "pinzas", "ventilador", "aire acondicionado", "humidificador", "bolsa de basura",
            "termo", "botella de agua", "fiambrera", "bandeja", "linterna",
            "brújula", "mapa", "tijeras", "pinza para el pelo", "cepillo de pelo",
        ]),
        WordCategory(id: "instruments", symbol: "guitars.fill", name: "Instrumentos musicales", words: [
            "violín", "viola", "violonchelo", "contrabajo", "arpa",
            "guitarra", "guitarra acústica", "guitarra eléctrica", "bajo eléctrico", "ukelele",
            "mandolina", "banjo", "laúd", "cítara", "piano",
            "piano de cola", "clavecín", "órgano", "acordeón", "armónica",
            "concertina", "flauta travesera", "flauta dulce", "flautín", "oboe",
            "corno inglés", "fagot", "contrafagot", "clarinete", "clarinete bajo",
            "saxofón", "saxofón alto", "saxofón tenor", "saxofón soprano", "saxofón barítono",
            "trompeta", "corneta", "trompa", "fliscorno", "trombón",
            "trombón bajo", "tuba", "bombardino", "sousafón", "batería",
            "timbal", "caja", "platillos", "pandereta", "triángulo",
            "carillón", "xilófono", "marimba", "vibráfono", "tambor",
            "bombo", "bongó", "conga", "yembé", "cajón flamenco",
            "castañuelas", "maracas", "clave", "steel drum", "campana",
            "celesta", "theremín", "sintetizador", "teclado", "piano eléctrico",
            "gaita", "didgeridoo", "flauta de pan", "ocarina", "silbato irlandés",
            "sitar", "tabla", "tambura", "shamisen", "koto",
            "erhu", "balalaica", "bouzouki", "oud", "darbuka",
            "kalimba", "mbira", "kora", "bandoneón", "melódica",
            "handpan", "kazú", "dulzaina", "txistu", "tamboril",
            "pandero", "charango", "cuatro", "güiro", "timple",
            "rabel", "zanfona", "chirimía",
        ]),
        WordCategory(id: "landmarks", symbol: "building.columns.fill", name: "Monumentos", words: [
            "Torre Eiffel", "Estatua de la Libertad", "Gran Muralla China", "Torre de Pisa", "Coliseo",
            "Taj Mahal", "Machu Picchu", "Acrópolis", "Stonehenge", "Pirámides de Guiza",
            "Esfinge de Guiza", "Angkor Wat", "Burj Khalifa", "Ópera de Sídney", "Big Ben",
            "Puente de la Torre", "Puerta de Brandeburgo", "Cataratas del Niágara", "Gran Cañón", "Monte Everest",
            "Monte Fuji", "Santorini", "Monte Uluru", "Cataratas Victoria", "Río Amazonas",
            "Desierto del Sáhara", "Islas Galápagos", "Partenón", "Museo del Louvre", "Ciudad del Vaticano",
            "Basílica de San Pedro", "Capilla Sixtina", "Fontana de Trevi", "Palacio de Versalles", "Alhambra",
            "Sagrada Familia", "Park Güell", "Santa Sofía", "Mezquita Azul", "Petra",
            "Ciudad Prohibida", "Templo de Senso-ji", "Castillo de Neuschwanstein", "Catedral de Colonia", "Muro de Berlín",
            "Pirámide de Keops", "Templo de Karnak", "Abu Simbel", "Kilimanjaro", "Serengeti",
            "Montaña de la Mesa", "Teotihuacán", "Chichén Itzá", "Tikal", "Cristo Redentor",
            "Pan de Azúcar", "Cataratas del Iguazú", "Salar de Uyuni", "Torres del Paine", "Bora Bora",
            "Gran Barrera de Coral", "Yellowstone", "Yosemite", "Monument Valley", "Valle de la Muerte",
            "Monte Rushmore", "Puente Golden Gate", "Empire State Building", "Puente de Brooklyn", "Casa Blanca",
            "Times Square", "Central Park", "Letrero de Hollywood", "Las Vegas Strip", "Montañas Rocosas",
            "Castillo de Edimburgo", "Palacio de Buckingham", "Castillo de Windsor", "Torre de Londres", "Acantilados de Moher",
            "Lago Ness", "Pompeya", "Foro Romano", "Panteón de Agripa", "Plaza de San Marcos",
            "Gran Canal de Venecia", "Cinque Terre", "Costa Amalfitana", "Dubrovnik", "Lagos de Plitvice",
            "Olimpia", "Delfos", "Meteora", "Catedral de San Esteban", "Palacio de Schönbrunn",
            "Hallstatt", "Torre CN", "Parque Nacional de Banff", "Cervino", "Jungfraujoch",
            "Castillo de Chillón", "Atomium", "Manneken Pis", "Molinos de Kinderdijk", "Casa de Ana Frank",
            "Rijksmuseum", "Tívoli de Copenhague", "Géiser de Islandia", "Auroras boreales", "Fiordos de Noruega",
            "Catedral de Burgos", "Catedral de Santiago de Compostela", "Giralda de Sevilla", "Mezquita de Córdoba", "Acueducto de Segovia",
            "Alcázar de Segovia", "El Escorial", "Palacio Real de Madrid", "Plaza Mayor de Madrid", "Puerta del Sol",
            "Museo del Prado", "Guggenheim de Bilbao", "Ciudad de las Artes y las Ciencias", "Teatro-Museo Dalí", "Casa Batlló",
            "La Pedrera", "Torre del Oro", "Plaza de España de Sevilla", "Catedral de Toledo", "Teatro Romano de Mérida",
            "Cuevas de Altamira", "Islas Cíes", "Teide", "Montserrat", "Catedral de la Almudena",
            "Generalife", "Castillo de Coca", "Las Médulas", "Aljafería", "Torre de Hércules",
            "Catedral de León", "Plaza del Obradoiro", "Castillo de Loarre", "Peñón de Gibraltar", "Cristo de Corcovado",
            "Obelisco de Buenos Aires", "Casa Rosada", "Líneas de Nazca", "Lago Titicaca", "Cartagena de Indias",
            "Catedral de México", "Zócalo de México", "Alcázar de Sevilla", "Palacio de Cibeles", "Monasterio de Guadalupe",
        ]),
    ]
}
