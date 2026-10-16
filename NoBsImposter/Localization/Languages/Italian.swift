//
//  Italian.swift
//  NoBsImposter
//
//  Italian (it).
//

import Foundation

struct ItalianStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Trova il traditore" }

    // MARK: How to play
    var howToPlay: String { "Come si gioca" }
    var howToPlayIntro: String {
        "Imposter è un gioco di società passa-e-gioca per 3-12 giocatori che condividono un unico dispositivo."
    }
    var howToPlaySteps: [String] {
        [
            "Prepara il round: scegli quanti giocatori e quanti imposter, seleziona le categorie e, se vuoi, assegna i nomi ai giocatori.",
            "Passa il dispositivo: ogni giocatore tiene la carta per vedere in privato la propria parola segreta. Uno o più imposter non ricevono la parola.",
            "Dai gli indizi: iniziando dal giocatore indicato, ognuno a turno dice un breve indizio sulla parola, senza pronunciarla apertamente.",
            "Discutete e votate: parlatene insieme e votate chi secondo voi è l'imposter.",
            "Rivela: tocca \"Rivela la soluzione\" per svelare la parola e gli imposter.",
        ]
    }
    var howToPlayTip: String {
        "L'imposter vince se resta nascosto, oppure se indovina la parola segreta. Tutti gli altri vincono se smascherano l'imposter."
    }

    // MARK: Setup
    var players: String { "Giocatori" }
    var imposters: String { "Imposter" }
    var categories: String { "Categorie" }
    var names: String { "Nomi" }
    var namesHint: String { "Facoltativo - lascia vuoto per \"Giocatore 1\", \"Giocatore 2\" …" }
    var all: String { "Tutte" }
    var none: String { "Nessuna" }
    var startGame: String { "Inizia la partita" }
    var selectAtLeastOneCategory: String { "Scegli almeno una categoria" }
    var imposterKnowsCategoryLabel: String { "L'imposter conosce la categoria" }
    var keepScreenOnLabel: String { "Mantieni lo schermo acceso" }
    var allCategories: String { "Tutte le categorie" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) di \(total)" }

    // MARK: Cancel
    var cancel: String { "Annulla" }
    var quitGameTitle: String { "Uscire dalla partita?" }
    var quitGameMessage: String { "Il round attuale andrà perso." }

    // MARK: Reveal
    var tapToReveal: String { "Tocca per rivelare" }
    var holdToReveal: String { "Tieni premuto per rivelare" }
    var next: String { "Avanti" }
    var done: String { "Fatto" }
    var youAreImposter: String { "Sei tu l'Imposter!" }
    var imposterHint: String {
        "Conosci solo la categoria. Scopri qual è la parola degli altri, e non farti scoprire."
    }
    var imposterHintNoCategory: String {
        "Scopri qual è la parola degli altri, e non farti scoprire."
    }
    var categoryLabel: String { "Categoria" }
    var passDevicePrefix: String { "Passa il dispositivo a " }
    func passDeviceTo(name: String) -> String { "Passa il dispositivo a \(name)" }
    func playerTitle(_ n: Int) -> String { "Giocatore \(n)" }

    // MARK: Summary
    var everyoneReady: String { "Tutti pronti!" }
    var discussHint: String {
        "A turno descrivete la vostra parola, poi votate chi è l'Imposter."
    }
    var startingPlayer: String { "Giocatore iniziale" }
    var startsDescribing: String { "inizia a descrivere" }
    var newRound: String { "Nuovo round" }
    var backToMenu: String { "Torna al menu" }
    var revealSolution: String { "Rivela la soluzione" }
    var revealSolutionTitle: String { "Rivelare la soluzione?" }
    var revealSolutionMessage: String { "Verranno mostrati la parola e gli imposter." }
    var theWordWas: String { "La parola era" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "C'è 1 Imposter tra voi" : "Ci sono \(count) Imposter tra voi"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "L'Imposter era" : "Gli Imposter erano"
    }
}

extension WordData {
    static let italianCategories: [WordCategory] = [
        WordCategory(id: "celebrities", symbol: "star.fill", name: "Celebrità", words: [
            "Leonardo da Vinci", "Dante Alighieri", "Galileo Galilei", "Cristoforo Colombo", "Michelangelo",
            "Raffaello", "Caravaggio", "Giuseppe Verdi", "Luciano Pavarotti", "Andrea Bocelli",
            "Sophia Loren", "Monica Bellucci", "Roberto Benigni", "Marcello Mastroianni", "Federico Fellini",
            "Sergio Leone", "Ennio Morricone", "Giorgio Armani", "Gianni Versace", "Valentino Rossi",
            "Francesco Totti", "Roberto Baggio", "Paolo Maldini", "Alessandro Del Piero", "Gianluigi Buffon",
            "Jannik Sinner", "Marco Pantani", "Alberto Tomba", "Federica Pellegrini", "Eros Ramazzotti",
            "Laura Pausini", "Zucchero", "Vasco Rossi", "Tiziano Ferro", "Maneskin",
            "Giuseppe Garibaldi", "Napoleone Bonaparte", "Giulio Cesare", "Marco Polo", "Antonio Vivaldi",
            "Giacomo Puccini", "Enrico Fermi", "Guglielmo Marconi", "Alessandro Volta", "Maria Montessori",
            "Rita Levi-Montalcini", "Umberto Eco", "Niccolò Machiavelli", "Giacomo Casanova", "Giorgio Chiellini",
            "Albert Einstein", "Isaac Newton", "Charles Darwin", "Nikola Tesla", "Marie Curie",
            "Stephen Hawking", "Pablo Picasso", "Vincent van Gogh", "Salvador Dalí", "Frida Kahlo",
            "William Shakespeare", "Mozart", "Beethoven", "Johann Sebastian Bach", "Elvis Presley",
            "Michael Jackson", "Freddie Mercury", "John Lennon", "Paul McCartney", "Bob Dylan",
            "Madonna", "Beyoncé", "Lady Gaga", "Taylor Swift", "Rihanna",
            "Adele", "Ed Sheeran", "Bruno Mars", "Justin Bieber", "Ariana Grande",
            "Shakira", "Dua Lipa", "The Weeknd", "Billie Eilish", "Eminem",
            "Bob Marley", "David Bowie", "Prince", "Mick Jagger", "Amy Winehouse",
            "Marilyn Monroe", "Audrey Hepburn", "Charlie Chaplin", "Leonardo DiCaprio", "Brad Pitt",
            "Tom Cruise", "Tom Hanks", "Robert De Niro", "Al Pacino", "Johnny Depp",
            "George Clooney", "Keanu Reeves", "Will Smith", "Denzel Washington", "Morgan Freeman",
            "Harrison Ford", "Arnold Schwarzenegger", "Sylvester Stallone", "Jim Carrey", "Robin Williams",
            "Angelina Jolie", "Julia Roberts", "Meryl Streep", "Scarlett Johansson", "Nicole Kidman",
            "Jennifer Lopez", "Jennifer Aniston", "Emma Watson", "Natalie Portman", "Cate Blanchett",
            "Barack Obama", "Donald Trump", "Winston Churchill", "Nelson Mandela", "Martin Luther King",
            "Cleopatra", "Che Guevara", "Gandhi", "Papa Francesco", "Madre Teresa",
            "Lionel Messi", "Cristiano Ronaldo", "Diego Maradona", "Pelé", "Neymar",
            "Zinedine Zidane", "David Beckham", "Roger Federer", "Rafael Nadal", "Novak Djokovic",
            "Serena Williams", "Usain Bolt", "Michael Jordan", "LeBron James", "Muhammad Ali",
            "Mike Tyson", "Tiger Woods", "Lewis Hamilton", "Elon Musk", "Bill Gates",
            "Steve Jobs", "Mark Zuckerberg", "Jeff Bezos", "Oprah Winfrey", "Walt Disney",
            "Karl Marx", "Sigmund Freud", "Christopher Nolan", "Quentin Tarantino", "Steven Spielberg",
            "Hans Zimmer", "Celine Dion", "Elton John", "Sting", "Bono",
            "Snoop Dogg", "Jay-Z", "Drake", "Kanye West", "Katy Perry",
            "Selena Gomez", "Harry Styles", "Zendaya", "Dwayne Johnson", "Ryan Reynolds",
            "Daniel Craig", "Hugh Jackman", "Chris Hemsworth", "Clint Eastwood", "Sean Connery",
            "Agatha Christie", "Stephen King", "J.K. Rowling", "Ernest Hemingway", "Pablo Neruda",
            "Gabriel García Márquez", "Carla Bruni", "Ornella Muti", "Claudia Cardinale", "Pierfrancesco Favino",
        ]),
        WordCategory(id: "movies", symbol: "film.fill", name: "Film", words: [
            "La vita è bella", "Il padrino", "Nuovo Cinema Paradiso", "La dolce vita", "Il buono, il brutto, il cattivo",
            "C'era una volta in America", "Il nome della rosa", "Pinocchio", "Benvenuti al Sud", "Perfetti sconosciuti",
            "Non ci resta che piangere", "Amici miei", "Il sorpasso", "Ladri di biciclette", "Roma città aperta",
            "Titanic", "Avatar", "Guerre stellari", "Jurassic Park", "Il cavaliere oscuro",
            "Ritorno al futuro", "Forrest Gump", "Pulp Fiction", "Matrix", "Il gladiatore",
            "Braveheart - Cuore impavido", "Il silenzio degli innocenti", "Fight Club", "Quei bravi ragazzi", "Le iene",
            "Psyco", "L'esorcista", "Lo squalo", "E.T. l'extra-terrestre", "I predatori dell'arca perduta",
            "Trappola di cristallo", "Rambo", "Rocky", "Terminator", "Alien",
            "Independence Day", "Men in Black", "Armageddon", "Sopravvissuto - The Martian", "Gravity",
            "Interstellar", "Inception", "Dunkirk", "Memento", "Salvate il soldato Ryan",
            "Apocalypse Now", "Full Metal Jacket", "Platoon", "Il pianista", "The Revenant - Redivivo",
            "Seven", "A Beautiful Mind", "Il diavolo veste Prada", "Pretty Woman", "Una notte da leoni",
            "Scary Movie", "Scream", "It", "Scappa - Get Out", "A Quiet Place - Un posto tranquillo",
            "Saw - L'enigmista", "Halloween", "Shining", "Chinatown", "A qualcuno piace caldo",
            "Il grande dittatore", "Tempi moderni", "La febbre dell'oro", "Ben-Hur", "Lawrence d'Arabia",
            "Spartacus", "Cleopatra", "Tutti insieme appassionatamente", "West Side Story", "Grease",
            "La febbre del sabato sera", "Dirty Dancing - Balli proibiti", "Moulin Rouge!", "Chicago", "La La Land",
            "Mamma Mia!", "Bohemian Rhapsody", "Whiplash", "Parasite", "Il lupo di Wall Street",
            "The Departed - Il bene e il male", "Kill Bill", "Django Unchained", "Non è un paese per vecchi", "Il petroliere",
            "Drive", "Mad Max: Fury Road", "2001: Odissea nello spazio", "Il pianeta delle scimmie", "Blade Runner",
            "Il quinto elemento", "Prova a prendermi", "Oppenheimer", "Barbie", "Top Gun",
            "Top Gun: Maverick", "La mummia", "Jumanji", "Una notte al museo", "Spider-Man",
            "Iron Man", "Thor", "Captain America", "The Avengers", "Guardiani della Galassia",
            "Black Panther", "Doctor Strange", "Ant-Man", "Deadpool", "X-Men",
            "Batman", "Superman", "Wonder Woman", "Aquaman", "Joker",
            "Lo Hobbit", "Il Signore degli Anelli", "Harry Potter e la pietra filosofale", "Animali fantastici", "I pirati dei Caraibi",
            "Transformers", "Mission: Impossible", "Casino Royale", "Skyfall", "Agente 007 - Goldfinger",
            "Quarto potere", "Biancaneve e i sette nani", "Cenerentola", "Le avventure di Peter Pan", "Lilli e il vagabondo",
            "La bella addormentata nel bosco", "La carica dei cento e uno", "Il libro della giungla", "La sirenetta", "La bella e la bestia",
            "Aladdin", "Il re leone", "Pocahontas", "Il gobbo di Notre Dame", "Hercules",
            "Mulan", "Tarzan", "Lilo & Stitch", "Alla ricerca di Nemo", "Gli Incredibili",
            "Ratatouille", "WALL-E", "Up", "Ribelle - The Brave", "Frozen - Il regno di ghiaccio",
            "Coco", "Soul", "Encanto", "Oceania", "Rapunzel - L'intreccio della torre",
            "Alice nel Paese delle Meraviglie", "Dumbo", "Polar Express", "Shrek", "Kung Fu Panda",
            "Madagascar", "L'era glaciale", "Il gatto con gli stivali", "Dragon Trainer", "Trolls",
            "Baby Boss", "Cattivissimo me", "Pets - Vita da animali", "Sing", "Lorax - Il guardiano della foresta",
            "Casablanca", "Cantando sotto la pioggia", "Via col vento", "Le ali della libertà", "La parola ai giurati",
            "Qualcuno volò sul nido del cuculo", "Il cigno nero", "The Truman Show", "Will Hunting - Genio ribelle", "Rain Man - L'uomo della pioggia",
        ]),
        WordCategory(id: "animals", symbol: "pawprint.fill", name: "Animali", words: [
            "cane", "gatto", "cavallo", "mucca", "maiale",
            "pecora", "capra", "asino", "coniglio", "topo",
            "ratto", "criceto", "porcellino d'India", "scoiattolo", "volpe",
            "lupo", "orso", "elefante", "leone", "tigre",
            "leopardo", "ghepardo", "giaguaro", "puma", "lince",
            "iena", "suricato", "rinoceronte", "ippopotamo", "giraffa",
            "zebra", "gnu", "bufalo", "bisonte", "yak",
            "cammello", "dromedario", "lama", "alpaca", "renna",
            "alce", "cervo", "capriolo", "cinghiale", "tasso",
            "martora", "donnola", "lontra", "castoro", "riccio",
            "talpa", "pipistrello", "orango", "scimpanzé", "gorilla",
            "gibbone", "macaco", "babbuino", "lemure", "koala",
            "canguro", "vombato", "opossum", "armadillo", "bradipo",
            "formichiere", "porcospino", "procione", "moffetta", "delfino",
            "balena", "balenottera azzurra", "megattera", "orca", "narvalo",
            "foca", "tricheco", "leone marino", "orso polare", "volpe artica",
            "leopardo delle nevi", "mangusta", "servalo", "ocelot", "aquila",
            "falco", "sparviero", "poiana", "gufo", "civetta",
            "pappagallo", "cacatua", "ara", "pappagallino", "canarino",
            "piccione", "passero", "merlo", "tordo", "pettirosso",
            "cinciallegra", "fringuello", "storno", "rondine", "cuculo",
            "picchio", "gazza", "cornacchia", "corvo", "ghiandaia",
            "cicogna", "airone", "fenicottero", "pellicano", "gabbiano",
            "anatra", "oca", "cigno", "pinguino", "struzzo",
            "pavone", "tacchino", "fagiano", "quaglia", "gallina",
            "gallo", "coccodrillo", "alligatore", "lucertola", "geco",
            "camaleonte", "iguana", "drago di Komodo", "tartaruga", "serpente",
            "pitone", "cobra", "serpente a sonagli", "rana", "rospo",
            "salamandra", "tritone", "axolotl", "carpa", "luccio",
            "salmone", "trota", "tonno", "squalo", "squalo martello",
            "razza", "anguilla", "aringa", "sardina", "seppia",
            "polpo", "stella marina", "medusa", "corallo", "granchio",
            "aragosta", "gambero", "cozza", "ostrica", "lumaca",
            "ape", "vespa", "farfalla", "libellula", "coccinella",
            "formica", "ragno", "scorpione", "grillo", "cavalletta",
        ]),
        WordCategory(id: "food", symbol: "fork.knife", name: "Cibo e bevande", words: [
            "mela", "pera", "banana", "arancia", "limone",
            "lime", "fragola", "lampone", "mora", "mirtillo",
            "ciliegia", "prugna", "pesca", "albicocca", "mango",
            "ananas", "anguria", "melone", "uva", "kiwi",
            "fico", "dattero", "cocco", "papaya", "avocado",
            "melagrana", "mandarino", "pompelmo", "ribes", "castagna",
            "carota", "patata", "pomodoro", "cetriolo", "peperone",
            "cipolla", "aglio", "broccoli", "cavolfiore", "spinaci",
            "lattuga", "insalata", "zucchina", "melanzana", "mais",
            "piselli", "fagioli", "lenticchie", "ceci", "sedano",
            "porro", "asparago", "ravanello", "cavolo", "cavolini di Bruxelles",
            "barbabietola", "finocchio", "carciofo", "champignon", "funghi",
            "zenzero", "pane", "panino", "cornetto", "pane tostato",
            "grissini", "focaccia", "baguette", "riso", "pasta",
            "spaghetti", "penne", "lasagne", "maccheroni", "tagliatelle",
            "gnocchi", "ravioli", "tortellini", "risotto", "polenta",
            "fiocchi d'avena", "muesli", "cereali", "burro", "margarina",
            "formaggio", "parmigiano", "mozzarella", "gorgonzola", "pecorino",
            "ricotta", "mascarpone", "stracchino", "provolone", "grana",
            "yogurt", "panna", "latte", "uovo", "frittata",
            "carne", "pollo", "maiale", "manzo", "agnello",
            "pancetta", "prosciutto", "salsiccia", "salame", "mortadella",
            "bresaola", "cotoletta", "bistecca", "hamburger", "polpette",
            "pesce", "salmone", "tonno", "trota", "acciughe",
            "gamberi", "vongole", "cozze", "calamari", "zuppa",
            "minestrone", "brodo", "stufato", "pizza", "margherita",
            "patatine fritte", "purè di patate", "insalata greca", "sushi", "tacos",
            "burrito", "kebab", "tramezzino", "piadina", "hot dog",
            "paella", "curry", "pancake", "cialde", "crepes",
            "torta", "crostata", "tiramisù", "panna cotta", "cannolo",
            "sfogliatella", "babà", "gelato", "sorbetto", "budino",
            "biscotto", "muffin", "brownie", "ciambella", "macaron",
            "cioccolato", "caramelle", "liquirizia", "patatine", "popcorn",
            "noci", "arachidi", "mandorle", "anacardi", "nocciole",
            "pistacchi", "miele", "marmellata", "maionese",
            "ketchup", "senape", "aceto", "olio d'oliva",
            "zucchero", "sale", "pepe", "acqua", "acqua minerale",
            "aranciata", "cola", "succo d'arancia", "succo di mela", "tè",
            "tè verde", "camomilla", "caffè", "espresso", "cappuccino",
            "latte macchiato", "cioccolata calda", "frullato", "smoothie", "birra",
            "vino bianco", "vino rosso", "spumante", "prosecco", "champagne",
            "whisky", "vodka", "rum", "gin", "tequila",
            "cognac", "limoncello", "grappa", "amaro", "aperol spritz",
            "cocktail", "pesto", "ragù", "sugo di pomodoro",
            "besciamella", "hummus", "tzatziki", "bruschetta",
        ]),
        WordCategory(id: "countries", symbol: "globe.europe.africa.fill", name: "Paesi", words: [
            "Afghanistan", "Egitto", "Albania", "Algeria", "Angola",
            "Argentina", "Armenia", "Azerbaigian", "Etiopia", "Australia",
            "Guinea Equatoriale", "Bahamas", "Bahrein", "Bangladesh", "Barbados",
            "Belgio", "Belize", "Benin", "Bhutan", "Bolivia",
            "Bosnia ed Erzegovina", "Botswana", "Brasile", "Brunei", "Bulgaria",
            "Burkina Faso", "Burundi", "Cile", "Cina", "Costa Rica",
            "Danimarca", "Repubblica Democratica del Congo", "Germania", "Dominica", "Repubblica Dominicana",
            "Gibuti", "Ecuador", "El Salvador", "Costa d'Avorio", "Eritrea",
            "Estonia", "Figi", "Finlandia", "Francia", "Gabon",
            "Gambia", "Georgia", "Ghana", "Grenada", "Grecia",
            "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti",
            "Honduras", "India", "Indonesia", "Iraq", "Iran",
            "Irlanda", "Islanda", "Israele", "Italia", "Giamaica",
            "Giappone", "Yemen", "Giordania", "Cambogia", "Camerun",
            "Canada", "Capo Verde", "Qatar", "Kazakistan", "Kenya",
            "Kirghizistan", "Kiribati", "Colombia", "Comore", "Congo",
            "Kosovo", "Croazia", "Cuba", "Kuwait", "Laos",
            "Lesotho", "Lettonia", "Libano", "Liberia", "Libia",
            "Lituania", "Lussemburgo", "Madagascar", "Malawi", "Malaysia",
            "Maldive", "Mali", "Malta", "Marocco", "Isole Marshall",
            "Mauritania", "Mauritius", "Messico", "Micronesia", "Moldavia",
            "Mongolia", "Montenegro", "Mozambico", "Myanmar", "Namibia",
            "Nauru", "Nepal", "Nuova Zelanda", "Nicaragua", "Paesi Bassi",
            "Niger", "Nigeria", "Corea del Nord", "Macedonia del Nord", "Norvegia",
            "Oman", "Austria", "Pakistan", "Palau", "Panama",
            "Papua Nuova Guinea", "Paraguay", "Perù", "Filippine", "Polonia",
            "Portogallo", "Ruanda", "Romania", "Russia", "Isole Salomone",
            "Samoa", "Zambia", "São Tomé e Príncipe", "Arabia Saudita", "Svezia",
            "Svizzera", "Senegal", "Serbia", "Seychelles", "Sierra Leone",
            "Zimbabwe", "Singapore", "Slovacchia", "Slovenia", "Somalia",
            "Spagna", "Sri Lanka", "Saint Kitts e Nevis", "Santa Lucia", "Saint Vincent e Grenadine",
            "Sudafrica", "Sudan", "Corea del Sud", "Sud Sudan", "Suriname",
            "Eswatini", "Siria", "Tagikistan", "Tanzania", "Thailandia",
            "Timor Est", "Togo", "Tonga", "Trinidad e Tobago", "Ciad",
            "Repubblica Ceca", "Tunisia", "Turkmenistan", "Turchia", "Tuvalu",
            "Uganda", "Ucraina", "Ungheria", "Uruguay", "Uzbekistan",
            "Vanuatu", "Venezuela", "Emirati Arabi Uniti", "Stati Uniti", "Regno Unito",
            "Vietnam", "Bielorussia", "Repubblica Centrafricana", "Cipro", "Liechtenstein",
        ]),
        WordCategory(id: "sports", symbol: "figure.run", name: "Sport", words: [
            "calcio", "pallacanestro", "tennis", "pallavolo", "pallamano",
            "hockey su ghiaccio", "nuoto", "atletica leggera", "ginnastica", "ciclismo",
            "pugilato", "lotta", "judo", "karate", "taekwondo",
            "scherma", "tiro con l'arco", "tiro a segno", "canottaggio", "canoa",
            "vela", "surf", "windsurf", "kitesurf", "immersione",
            "pallanuoto", "nuoto sincronizzato", "tuffi", "triathlon", "maratona",
            "sprint", "corsa a ostacoli", "salto in alto", "salto in lungo", "salto triplo",
            "salto con l'asta", "lancio del giavellotto", "lancio del disco", "lancio del martello", "getto del peso",
            "decathlon", "eptathlon", "sci", "snowboard", "sci di fondo",
            "salto con gli sci", "biathlon", "bob", "slittino", "skeleton",
            "pattinaggio artistico", "pattinaggio di velocità", "curling", "golf", "rugby",
            "football americano", "baseball", "softball", "cricket", "hockey su prato",
            "lacrosse", "badminton", "squash", "ping pong", "pattinaggio a rotelle",
            "skateboard", "BMX", "mountain biking", "sollevamento pesi", "powerlifting",
            "bodybuilding", "yoga", "pilates", "aerobica", "zumba",
            "danza", "balletto", "breakdance", "arrampicata", "bouldering",
            "escursionismo", "alpinismo", "paracadutismo", "parapendio", "deltaplano",
            "bungee jumping", "equitazione", "salto ostacoli", "dressage", "polo",
            "corsa dei cavalli", "automobilismo", "Formula 1", "rally", "motocross",
            "karting", "motociclismo", "floorball", "ultimate frisbee", "bowling",
            "biliardo", "freccette", "scacchi", "bocce", "petanque",
            "padel", "beach volley", "beach soccer", "calcio a 5", "calcetto",
            "lotta libera", "lotta greco-romana", "aikido", "kendo", "kung fu",
            "capoeira", "muay thai", "kickboxing", "MMA", "corsa",
            "jogging", "nordic walking", "marcia", "pentathlon moderno", "duathlon",
            "corsa campestre", "corsa a staffetta", "parkour", "freerunning", "arrampicata sportiva",
            "sci alpino", "slalom", "discesa libera", "hockey su pista",
            "scherma in carrozzina", "basket in carrozzina", "handbike", "vela olimpica", "canoa slalom",
        ]),
        WordCategory(id: "jobs", symbol: "briefcase.fill", name: "Professioni", words: [
            "medico", "infermiere", "dentista", "veterinario", "farmacista",
            "chirurgo", "pediatra", "psichiatra", "soccorritore", "fisioterapista",
            "ottico", "radiologo", "avvocato", "giudice", "pubblico ministero",
            "notaio", "poliziotto", "vigile del fuoco", "soldato", "ufficiale",
            "doganiere", "insegnante", "professore", "educatore", "assistente sociale",
            "psicologo", "bibliotecario", "ingegnere", "architetto", "informatico",
            "programmatore", "elettricista", "idraulico", "falegname", "muratore",
            "imbianchino", "fabbro", "saldatore", "meccanico", "agricoltore",
            "giardiniere", "guardiaboschi", "pescatore", "cuoco", "panettiere",
            "pasticcere", "macellaio", "cameriere", "barista", "parrucchiere",
            "estetista", "sarto", "calzolaio", "orologiaio", "orafo",
            "contabile", "commercialista", "banchiere", "revisore", "imprenditore",
            "manager", "direttore", "commesso", "cassiere", "magazziniere",
            "camionista", "tassista", "autista di autobus", "pilota", "assistente di volo",
            "macchinista", "marinaio", "capitano", "giornalista", "redattore",
            "fotografo", "cameraman", "attore", "regista", "cantante",
            "musicista", "ballerino", "artista", "scultore", "grafico",
            "web designer", "scrittore", "traduttore", "interprete", "atleta",
            "allenatore", "personal trainer", "nutrizionista", "scienziato", "chimico",
            "fisico", "biologo", "matematico", "astronauta", "geologo",
            "meteorologo", "urbanista", "arredatore", "minatore", "artigiano",
            "custode", "addetto alle pulizie", "guardia giurata", "investigatore", "becchino",
            "sommelier", "pizzaiolo", "gelataio", "fioraio", "gioielliere",
            "tatuatore", "massaggiatore", "dietologo", "logopedista", "ostetrica",
            "paramedico", "guardia costiera", "spazzino", "postino", "corriere",
            "bagnino", "guida turistica", "croupier", "antennista", "vetraio",
            "tappezziere", "ceramista", "fabbro ferraio", "casaro", "apicoltore",
            "allevatore", "vignaiolo", "mugnaio", "spazzacamino", "arbitro",
        ]),
        WordCategory(id: "objects", symbol: "lightbulb.fill", name: "Oggetti di uso quotidiano", words: [
            "spazzolino", "dentifricio", "sapone", "asciugamano", "pettine",
            "spazzola", "specchio", "forbici", "tagliaunghie", "rasoio",
            "asciugacapelli", "shampoo", "bagnoschiuma", "spugna", "carta igienica",
            "vasca da bagno", "doccia", "lavandino", "piatto", "ciotola",
            "tazza", "bicchiere", "pentola", "padella", "coltello",
            "forchetta", "cucchiaio", "cucchiaino", "frusta", "tagliere",
            "apriscatole", "cavatappi", "grattugia", "colino", "bilancia da cucina",
            "bollitore", "tostapane", "frullatore", "macchina del caffè", "microonde",
            "forno", "frigorifero", "congelatore", "lavastoviglie", "fornello",
            "carta da cucina", "pellicola", "pattumiera", "scopa", "paletta",
            "mocio", "aspirapolvere", "detersivo", "detersivo per piatti", "lavatrice",
            "asciugatrice", "ferro da stiro", "asse da stiro", "cesto della biancheria", "molletta",
            "divano", "poltrona", "sedia", "tavolo", "scrivania",
            "letto", "materasso", "cuscino", "coperta", "lenzuolo",
            "armadio", "scaffale", "cassettiera", "comodino", "lampada",
            "lampadario", "tenda", "tappeto", "zerbino", "cornice",
            "orologio da parete", "sveglia", "televisore", "telecomando", "radio",
            "altoparlante", "computer", "portatile", "tastiera", "mouse",
            "monitor", "stampante", "telefono", "cellulare", "caricabatterie",
            "cuffie", "macchina fotografica", "batteria", "lampadina", "martello",
            "cacciavite", "pinza", "sega", "trapano", "viti",
            "chiodi", "nastro adesivo", "metro", "livella", "scala",
            "secchio", "annaffiatoio", "tubo", "vanga", "rastrello",
            "tagliaerba", "chiave", "serratura", "maniglia", "cassetta della posta",
            "ombrello", "zaino", "borsa", "portafoglio", "occhiali",
            "occhiali da sole", "orologio da polso", "anello", "collana", "braccialetto",
            "cappello", "berretto", "sciarpa", "guanti", "giacca",
            "cappotto", "pantaloni", "camicia", "maglietta", "maglione",
            "vestito", "gonna", "calze", "calzamaglia", "biancheria intima",
            "scarpe", "stivali", "sandali", "cintura", "cravatta",
            "grembiule", "pigiama", "accappatoio", "pantofole", "matita",
            "penna", "gomma", "righello", "pinzatrice", "perforatrice",
            "busta", "quaderno", "calendario", "raccoglitore", "colla",
            "post-it", "inchiostro", "libro", "giornale", "rivista",
            "carte da gioco", "dadi", "puzzle", "candela", "fiammiferi",
            "accendino", "vaso", "portafiori", "posacenere", "coperta di lana",
            "termometro", "cerotto", "cassetta del pronto soccorso", "pastiglia", "cotone",
            "pinzette", "termosifone", "ventilatore", "condizionatore", "umidificatore",
            "sacchetto della spazzatura", "sacchetto di plastica", "borsa della spesa", "borraccia", "thermos",
            "portapranzo", "teglia", "stampo da forno", "mattarello", "spremiagrumi",
            "pelapatate", "schiaccianoci", "timer da cucina", "filtro del caffè", "vassoio",
            "sottobicchiere", "presina", "strofinaccio", "friggitrice", "torcia",
        ]),
        WordCategory(id: "instruments", symbol: "guitars.fill", name: "Strumenti musicali", words: [
            "violino", "viola", "violoncello", "contrabbasso", "arpa",
            "chitarra", "chitarra acustica", "chitarra elettrica", "basso", "ukulele",
            "mandolino", "banjo", "liuto", "cetra", "pianoforte",
            "pianoforte a coda", "clavicembalo", "organo", "fisarmonica", "armonica a bocca",
            "flauto", "flauto traverso", "flauto dolce", "ottavino", "oboe",
            "corno inglese", "fagotto", "controfagotto", "clarinetto", "clarinetto basso",
            "sassofono", "sax contralto", "sax tenore", "sax soprano", "sax baritono",
            "tromba", "cornetta", "corno francese", "flicorno", "trombone",
            "trombone basso", "tuba", "eufonio", "sousafono", "batteria",
            "timpani", "rullante", "piatti", "tamburello", "triangolo",
            "glockenspiel", "xilofono", "marimba", "vibrafono", "tamburo",
            "grancassa", "bongo", "conga", "djembe", "cajón",
            "nacchere", "maracas", "clave", "steel drum", "campana",
            "celesta", "theremin", "sintetizzatore", "tastiera", "piano elettrico",
            "cornamusa", "didgeridoo", "flauto di Pan", "ocarina", "tin whistle",
            "sitar", "tabla", "shamisen", "koto", "erhu",
            "balalaika", "bouzouki", "oud", "darbuka", "kalimba",
            "kora", "bandoneon", "melodica", "handpan", "kazoo",
            "organetto", "zampogna", "mandola", "chitarra battente", "scacciapensieri",
            "fisarmonica diatonica", "flauto di canne", "corno delle Alpi", "lira", "salterio",
            "tromba marina", "glass harmonica", "pianola", "campane tubolari", "woodblock",
            "guiro", "cabasa", "shaker", "wah-wah", "mellotron",
            "theorba", "viola da gamba", "ciaramella", "launeddas", "tromba naturale",
        ]),
        WordCategory(id: "landmarks", symbol: "building.columns.fill", name: "Monumenti e luoghi famosi", words: [
            "Colosseo", "Torre di Pisa", "Fontana di Trevi", "Basilica di San Pietro", "Duomo di Milano",
            "Ponte di Rialto", "Piazza San Marco", "Canal Grande", "Ponte Vecchio", "Cappella Sistina",
            "Pantheon", "Foro Romano", "Castel Sant'Angelo", "Scala di Spagna", "Vesuvio",
            "Pompei", "Costiera Amalfitana", "Cinque Terre", "Reggia di Caserta", "Valle dei Templi",
            "Trulli di Alberobello", "Mole Antonelliana", "Arena di Verona", "Grotta Azzurra", "Etna",
            "Torre Eiffel", "Statua della Libertà", "Grande Muraglia cinese", "Taj Mahal", "Machu Picchu",
            "Acropoli", "Partenone", "Stonehenge", "Piramidi di Giza", "Sfinge",
            "Angkor Wat", "Burj Khalifa", "Teatro dell'Opera di Sydney", "Big Ben", "Tower Bridge",
            "Porta di Brandeburgo", "Cascate del Niagara", "Grand Canyon", "Monte Everest", "Monte Fuji",
            "Santorini", "Ayers Rock", "Cascate Vittoria", "Rio delle Amazzoni", "Deserto del Sahara",
            "Isole Galápagos", "Museo del Louvre", "Città del Vaticano", "Reggia di Versailles", "Alhambra",
            "Sagrada Família", "Park Güell", "Santa Sofia", "Moschea Blu", "Petra",
            "Borobudur", "Città Proibita", "Palazzo del Potala", "Tempio Senso-ji", "Fushimi Inari",
            "Castello di Neuschwanstein", "Duomo di Colonia", "Muro di Berlino", "Checkpoint Charlie", "Reichstag",
            "Tempio di Karnak", "Abu Simbel", "Kilimangiaro", "Serengeti", "Montagna della Tavola",
            "Chichén Itzá", "Cristo Redentore", "Pan di Zucchero", "Cascate dell'Iguazú", "Salar de Uyuni",
            "Torres del Paine", "Bora Bora", "Great Barrier Reef", "Uluru", "Yellowstone",
            "Yosemite", "Monument Valley", "Bryce Canyon", "Death Valley", "Monte Rushmore",
            "Golden Gate Bridge", "Empire State Building", "Chrysler Building", "Ponte di Brooklyn", "Casa Bianca",
            "Lincoln Memorial", "Times Square", "Central Park", "Insegna di Hollywood", "Las Vegas Strip",
            "Montagne Rocciose", "Everglades", "Cape Canaveral", "Castello di Edimburgo", "Buckingham Palace",
            "Castello di Windsor", "Torre di Londra", "Osservatorio di Greenwich", "Scogliere di Moher", "Selciato del gigante",
            "Vallo di Adriano", "Lago di Ness", "Dubrovnik", "Laghi di Plitvice", "Olimpia",
            "Delfi", "Meteore", "Palazzo di Schönbrunn", "Duomo di Santo Stefano", "Hallstatt",
            "CN Tower", "Parco Nazionale di Banff", "Cervino", "Jungfraujoch", "Castello di Chillon",
            "Atomium", "Manneken Pis", "Mulini di Kinderdijk", "Casa di Anna Frank", "Rijksmuseum",
            "Giardini di Tivoli", "Aurora boreale", "Fiordi norvegesi", "Geirangerfjord", "Blue Lagoon",
        ]),
    ]
}
