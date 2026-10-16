//
//  Portuguese.swift
//  NoBsImposter
//
//  Portuguese — Brazilian (pt-BR). Holds both the UI strings and the word
//  categories for this language.
//

import Foundation

struct PortugueseStrings: LanguageStrings {
    // MARK: General
    var tagline: String { "Encontre o traidor" }

    // MARK: How to play
    var howToPlay: String { "Como jogar" }
    var howToPlayIntro: String {
        "Impostor é um jogo de festa para 3 a 12 jogadores que compartilham um único aparelho."
    }
    var howToPlaySteps: [String] {
        [
            "Prepare a rodada: Escolha quantos jogadores e impostores haverá, selecione as categorias e, se quiser, dê nomes aos jogadores.",
            "Passe o aparelho: Cada jogador segura a carta para ver em segredo sua palavra. Um ou mais impostores não recebem a palavra.",
            "Dê as dicas: Começando pelo jogador indicado, cada um diz uma dica curta sobre a palavra — sem dizê-la diretamente.",
            "Discutam e votem: Conversem e votem juntos em quem é o impostor.",
            "Revele: Toque em \"Revelar solução\" para mostrar a palavra e os impostores.",
        ]
    }
    var howToPlayTip: String {
        "O impostor vence se não for descoberto — ou se adivinhar a palavra secreta. Todos os outros vencem ao desmascarar o impostor."
    }

    // MARK: Setup
    var players: String { "Jogadores" }
    var imposters: String { "Impostores" }
    var categories: String { "Categorias" }
    var names: String { "Nomes" }
    var namesHint: String { "Opcional — deixe em branco para \"Jogador 1\", \"Jogador 2\" …" }
    var all: String { "Todas" }
    var none: String { "Nenhuma" }
    var startGame: String { "Iniciar jogo" }
    var selectAtLeastOneCategory: String { "Escolha pelo menos uma categoria" }
    var imposterKnowsCategoryLabel: String { "Impostor conhece a categoria" }
    var keepScreenOnLabel: String { "Manter a tela ligada" }
    var allCategories: String { "Todas as categorias" }
    func categoriesSummary(selected: Int, of total: Int) -> String { "\(selected) de \(total)" }

    // MARK: Cancel
    var cancel: String { "Cancelar" }
    var quitGameTitle: String { "Sair do jogo?" }
    var quitGameMessage: String { "A rodada atual será perdida." }

    // MARK: Reveal
    var tapToReveal: String { "Toque para revelar" }
    var holdToReveal: String { "Segure para revelar" }
    var next: String { "Próximo" }
    var done: String { "Pronto" }
    var youAreImposter: String { "Você é o Impostor!" }
    var imposterHint: String {
        "Você só conhece a categoria. Descubra qual é a palavra dos outros — e não se entregue."
    }
    var imposterHintNoCategory: String {
        "Descubra qual é a palavra dos outros — e não se entregue."
    }
    var categoryLabel: String { "Categoria" }
    var passDevicePrefix: String { "Passe o aparelho para " }
    func passDeviceTo(name: String) -> String { "Passe o aparelho para \(name)" }
    func playerTitle(_ n: Int) -> String { "Jogador \(n)" }

    // MARK: Summary
    var everyoneReady: String { "Todos prontos!" }
    var discussHint: String {
        "Descrevam sua palavra, um de cada vez, e depois votem em quem é o Impostor."
    }
    var startingPlayer: String { "Jogador inicial" }
    var startsDescribing: String { "começa a descrever" }
    var newRound: String { "Nova rodada" }
    var backToMenu: String { "Voltar ao menu" }
    var revealSolution: String { "Revelar solução" }
    var revealSolutionTitle: String { "Revelar solução?" }
    var revealSolutionMessage: String { "A palavra e os impostores serão mostrados." }
    var theWordWas: String { "A palavra era" }
    func imposterCountAmongYou(_ count: Int) -> String {
        count == 1 ? "1 Impostor está entre vocês" : "\(count) Impostores estão entre vocês"
    }
    func imposterWasLabel(count: Int) -> String {
        count == 1 ? "O Impostor era" : "Os Impostores eram"
    }
}

extension WordData {
    static let portugueseCategories: [WordCategory] = [
        WordCategory(id: "celebrities", symbol: "star.fill", name: "Celebridades", words: [
            "Pelé", "Ayrton Senna", "Xuxa", "Silvio Santos", "Roberto Carlos",
            "Caetano Veloso", "Gilberto Gil", "Chico Buarque", "Tom Jobim", "Elis Regina",
            "Anitta", "Ivete Sangalo", "Gisele Bündchen", "Fernanda Montenegro", "Wagner Moura",
            "Rodrigo Santoro", "Sônia Braga", "Lázaro Ramos", "Taís Araújo", "Luciano Huck",
            "Faustão", "Ana Maria Braga", "Hebe Camargo", "Chiquinha Gonzaga", "Machado de Assis",
            "Monteiro Lobato", "Jorge Amado", "Paulo Coelho", "Oscar Niemeyer", "Santos Dumont",
            "Tarsila do Amaral", "Cândido Portinari", "Villa-Lobos", "Carmen Miranda", "Oswaldo Cruz",
            "Getúlio Vargas", "Juscelino Kubitschek", "Zico", "Garrincha", "Ronaldinho Gaúcho",
            "Kaká", "Marta", "Gustavo Kuerten", "Daiane dos Santos", "César Cielo",
            "Neymar", "Cristiano Ronaldo", "Lionel Messi", "Diego Maradona", "Zinedine Zidane",
            "Albert Einstein", "Isaac Newton", "Galileu Galilei", "Charles Darwin", "Marie Curie",
            "Leonardo da Vinci", "Pablo Picasso", "Vincent van Gogh", "Salvador Dalí", "Michelangelo",
            "Mozart", "Beethoven", "Bach", "Chopin", "Vivaldi",
            "William Shakespeare", "Mark Twain", "Ernest Hemingway", "Agatha Christie", "Gabriel García Márquez",
            "Jorge Luis Borges", "Pablo Neruda", "J.K. Rowling", "Stephen King", "Franz Kafka",
            "Napoleão Bonaparte", "Júlio César", "Cleópatra", "Cristóvão Colombo", "Marco Polo",
            "Nelson Mandela", "Martin Luther King", "Mahatma Gandhi", "Abraham Lincoln", "Winston Churchill",
            "Nikola Tesla", "Stephen Hawking", "Steve Jobs", "Bill Gates", "Elon Musk",
            "Mark Zuckerberg", "Jeff Bezos", "Barack Obama", "Michelle Obama", "Donald Trump",
            "Michael Jackson", "Madonna", "Beyoncé", "Rihanna", "Taylor Swift",
            "Lady Gaga", "Adele", "Ed Sheeran", "Bruno Mars", "Justin Bieber",
            "Ariana Grande", "Dua Lipa", "The Weeknd", "Billie Eilish", "Shakira",
            "Elvis Presley", "Freddie Mercury", "John Lennon", "Paul McCartney", "Mick Jagger",
            "David Bowie", "Bob Marley", "Jimi Hendrix", "Kurt Cobain", "Prince",
            "Frank Sinatra", "Whitney Houston", "Amy Winehouse", "Tina Turner", "Aretha Franklin",
            "Eminem", "Snoop Dogg", "Jay-Z", "Kanye West", "Drake",
            "Leonardo DiCaprio", "Brad Pitt", "Tom Cruise", "Tom Hanks", "Johnny Depp",
            "Robert De Niro", "Al Pacino", "Morgan Freeman", "Denzel Washington", "Will Smith",
            "Keanu Reeves", "Robert Downey Jr.", "Chris Hemsworth", "Daniel Craig", "Arnold Schwarzenegger",
            "Sylvester Stallone", "Jackie Chan", "Bruce Lee", "Charlie Chaplin", "Clint Eastwood",
            "Julia Roberts", "Angelina Jolie", "Jennifer Lopez", "Jennifer Aniston", "Scarlett Johansson",
            "Meryl Streep", "Nicole Kidman", "Sandra Bullock", "Natalie Portman", "Emma Watson",
            "Audrey Hepburn", "Marilyn Monroe", "Grace Kelly", "Sophia Loren", "Jim Carrey",
            "Michael Jordan", "LeBron James", "Kobe Bryant", "Muhammad Ali", "Mike Tyson",
            "Usain Bolt", "Roger Federer", "Rafael Nadal", "Novak Djokovic", "Serena Williams",
            "Lewis Hamilton", "Michael Schumacher", "Tiger Woods", "Oprah Winfrey", "Ellen DeGeneres",
            "Walt Disney", "Steven Spielberg", "Quentin Tarantino", "Alfred Hitchcock", "Christopher Nolan",
            "Sigmund Freud", "Karl Marx", "Che Guevara", "Fidel Castro", "Papa Francisco",
            "Madre Teresa de Calcutá", "Dalai Lama", "Rainha Elizabeth II", "Princesa Diana", "Carl Sagan",
        ]),
        WordCategory(id: "movies", symbol: "film.fill", name: "Filmes", words: [
            "O Poderoso Chefão", "De Volta para o Futuro", "O Rei Leão", "Titanic", "Avatar",
            "Star Wars", "Jurassic Park", "Batman: O Cavaleiro das Trevas", "O Silêncio dos Inocentes", "Forrest Gump",
            "Pulp Fiction", "Matrix", "Gladiador", "Coração Valente", "Beleza Americana",
            "Clube da Luta", "Os Bons Companheiros", "Cães de Aluguel", "Psicose", "O Exorcista",
            "Tubarão", "E.T. O Extraterrestre", "Os Caçadores da Arca Perdida", "Indiana Jones e o Templo da Perdição", "Duro de Matar",
            "Rambo", "Rocky", "O Exterminador do Futuro", "O Exterminador do Futuro 2", "Predador",
            "Alien: O Oitavo Passageiro", "Independence Day", "Homens de Preto", "Armageddon", "Perdido em Marte",
            "Gravidade", "Interestelar", "A Origem", "Tenet", "Dunkirk",
            "Amnésia", "O Grande Truque", "O Resgate do Soldado Ryan", "Apocalypse Now", "Nascido para Matar",
            "Platoon", "O Pianista", "Hotel Ruanda", "Diamante de Sangue", "Invictus",
            "O Último dos Moicanos", "Dança com Lobos", "O Regresso", "Seven: Os Sete Crimes Capitais", "Zodíaco",
            "Erin Brockovich", "Uma Mente Brilhante", "O Diabo Veste Prada", "Legalmente Loira", "O Diário de Bridget Jones",
            "Uma Linda Mulher", "Todo Mundo em Pânico", "A Profecia", "Poltergeist", "It: A Coisa",
            "Corra!", "Hereditário", "Midsommar", "Um Lugar Silencioso", "Caixa de Pássaros",
            "Jogos Mortais", "Pânico", "A Hora do Pesadelo", "Halloween", "Sexta-Feira 13",
            "Chinatown", "Se Meu Apartamento Falasse", "Quanto Mais Quente Melhor", "O Grande Ditador", "Tempos Modernos",
            "Ben-Hur", "Lawrence da Arábia", "Spartacus", "Cleópatra", "A Noviça Rebelde",
            "Amor, Sublime Amor", "Nos Tempos da Brilhantina", "Os Embalos de Sábado à Noite", "Dirty Dancing", "Footloose",
            "Moulin Rouge", "Chicago", "La La Land", "Mamma Mia", "Bohemian Rhapsody",
            "Rocketman", "Whiplash: Em Busca da Perfeição", "Birdman", "Parasita", "Roma",
            "História de um Casamento", "O Irlandês", "O Lobo de Wall Street", "Os Infiltrados", "Kill Bill",
            "Jackie Brown", "Os Oito Odiados", "Django Livre", "Onde os Fracos Não Têm Vez", "Sangue Negro",
            "Drive", "Mad Max", "Mad Max: Estrada da Fúria", "Waterworld", "2001: Uma Odisseia no Espaço",
            "Planeta dos Macacos", "Blade Runner", "O Quinto Elemento", "Contato", "Prenda-me Se For Capaz",
            "O Terminal", "Lincoln", "Ponte dos Espiões", "1917", "Oppenheimer",
            "Barbie", "Tudo em Todo Lugar ao Mesmo Tempo", "Top Gun", "Top Gun: Maverick", "A Múmia",
            "Jumanji", "Uma Noite no Museu", "Homem-Aranha", "Homem de Ferro", "Thor",
            "Capitão América", "Os Vingadores", "Guardiões da Galáxia", "Pantera Negra", "Doutor Estranho",
            "Homem-Formiga", "Deadpool", "X-Men", "Logan", "Batman",
            "Superman", "Mulher-Maravilha", "Aquaman", "Coringa", "O Hobbit",
            "O Senhor dos Anéis", "Harry Potter e a Pedra Filosofal", "Piratas do Caribe", "Transformers", "Missão Impossível",
            "007: Cassino Royale", "007: Operação Skyfall", "Cidadão Kane", "Branca de Neve e os Sete Anões", "Pinóquio",
            "Fantasia", "Bambi", "Cinderela", "Peter Pan", "A Dama e o Vagabundo",
            "A Bela Adormecida", "101 Dálmatas", "Mogli: O Menino Lobo", "A Pequena Sereia", "A Bela e a Fera",
            "Aladdin", "Pocahontas", "O Corcunda de Notre Dame", "Hércules", "Mulan",
            "Tarzan", "Lilo e Stitch", "Procurando Nemo", "Os Incríveis", "Ratatouille",
            "WALL-E", "Up: Altas Aventuras", "Valente", "Frozen", "Viva: A Vida é uma Festa",
            "Soul", "Encanto", "Moana", "Enrolados", "Alice no País das Maravilhas",
            "O Expresso Polar", "Shrek", "Kung Fu Panda", "Madagascar", "A Era do Gelo",
            "Como Treinar o Seu Dragão", "Trolls", "O Poderoso Chefinho", "Minions", "Meu Malvado Favorito",
            "Casablanca", "Cantando na Chuva", "...E o Vento Levou", "Um Sonho de Liberdade", "12 Homens e uma Sentença",
            "O Iluminado", "Cisne Negro", "Réquiem para um Sonho", "O Show de Truman", "Cidade de Deus",
            "Tropa de Elite", "Central do Brasil", "Que Horas Ela Volta?", "O Auto da Compadecida", "Minha Mãe é uma Peça",
        ]),
        WordCategory(id: "animals", symbol: "pawprint.fill", name: "Animais", words: [
            "cachorro", "gato", "cavalo", "vaca", "porco",
            "ovelha", "cabra", "burro", "coelho", "rato",
            "camundongo", "hamster", "porquinho-da-índia", "esquilo", "raposa",
            "lobo", "urso", "elefante", "leão", "tigre",
            "leopardo", "guepardo", "onça-pintada", "puma", "lince",
            "hiena", "suricato", "rinoceronte", "hipopótamo", "girafa",
            "zebra", "gnu", "búfalo", "bisão", "iaque",
            "camelo", "dromedário", "lhama", "alpaca", "rena",
            "alce", "cervo", "veado", "javali", "texugo",
            "doninha", "lontra", "castor", "ouriço", "toupeira",
            "morcego", "orangotango", "chimpanzé", "gorila", "gibão",
            "macaco", "babuíno", "lêmure", "coala", "canguru",
            "wombat", "gambá", "tatu", "preguiça", "tamanduá",
            "porco-espinho", "guaxinim", "golfinho", "baleia", "baleia-azul",
            "baleia-jubarte", "orca", "narval", "foca", "leão-marinho",
            "morsa", "urso-polar", "raposa-do-ártico", "leopardo-das-neves", "mangusto",
            "águia", "falcão", "gavião", "coruja", "mocho",
            "papagaio", "arara", "periquito", "canário", "pomba",
            "pardal", "sabiá", "beija-flor", "bem-te-vi", "tucano",
            "andorinha", "cuco", "pica-pau", "pega", "corvo",
            "gralha", "cegonha", "garça", "flamingo", "pelicano",
            "gaivota", "pato", "ganso", "cisne", "pinguim",
            "avestruz", "pavão", "peru", "faisão", "codorna",
            "galinha", "galo", "ema", "arara-azul", "urubu",
            "crocodilo", "jacaré", "lagarto", "lagartixa", "camaleão",
            "iguana", "dragão-de-komodo", "tartaruga", "jabuti", "cobra",
            "píton", "sucuri", "cascavel", "jararaca", "naja",
            "sapo", "rã", "perereca", "salamandra", "axolote",
            "carpa", "lúcio", "salmão", "truta", "atum",
            "tubarão", "tubarão-martelo", "arraia", "enguia", "sardinha",
            "lula", "polvo", "estrela-do-mar", "água-viva", "coral",
            "caranguejo", "lagosta", "camarão", "siri", "ostra",
            "abelha", "vespa", "formiga", "borboleta", "mariposa",
            "joaninha", "libélula", "gafanhoto", "grilo", "aranha",
            "escorpião", "minhoca", "caracol", "lesma", "mosquito",
            "capivara", "tamanduá-bandeira", "quati", "tatu-bola", "lobo-guará",
        ]),
        WordCategory(id: "food", symbol: "fork.knife", name: "Comidas e Bebidas", words: [
            "maçã", "pera", "banana", "laranja", "limão",
            "lima", "morango", "framboesa", "amora", "mirtilo",
            "cereja", "ameixa", "pêssego", "damasco", "manga",
            "abacaxi", "melancia", "melão", "uva", "kiwi",
            "figo", "tâmara", "coco", "mamão", "abacate",
            "romã", "tangerina", "toranja", "goiaba", "maracujá",
            "acerola", "caju", "jabuticaba", "pitanga", "graviola",
            "cenoura", "batata", "tomate", "pepino", "pimentão",
            "cebola", "alho", "brócolis", "couve-flor", "espinafre",
            "alface", "abobrinha", "berinjela", "milho", "ervilha",
            "feijão", "lentilha", "grão-de-bico", "aipo", "alho-poró",
            "aspargo", "rabanete", "repolho", "couve", "beterraba",
            "mandioca", "inhame", "abóbora", "chuchu", "quiabo",
            "cogumelo", "gengibre", "pão", "pão integral", "pãozinho",
            "croissant", "torrada", "baguete", "arroz", "macarrão",
            "espaguete", "lasanha", "nhoque", "cuscuz", "quinoa",
            "aveia", "granola", "sucrilhos", "manteiga", "margarina",
            "queijo", "queijo-de-minas", "parmesão", "mussarela", "requeijão",
            "iogurte", "creme de leite", "leite", "leite condensado", "ovo",
            "ovo frito", "omelete", "carne", "frango", "carne de porco",
            "carne bovina", "cordeiro", "bacon", "presunto", "linguiça",
            "salame", "mortadela", "bife", "hambúrguer", "almôndega",
            "peixe", "salmão", "atum", "bacalhau", "sardinha",
            "camarão", "mexilhão", "lula", "sopa", "canja",
            "caldo verde", "feijoada", "picanha", "churrasco", "pizza",
            "batata frita", "purê de batata", "farofa", "arroz e feijão", "bolinho de bacalhau",
            "pão de queijo", "coxinha", "pastel", "empada", "esfiha",
            "tapioca", "acarajé", "vatapá", "moqueca", "escondidinho",
            "sushi", "taco", "burrito", "kebab", "sanduíche",
            "cachorro-quente", "misto quente", "risoto", "paella", "curry",
            "panqueca", "waffle", "crepe", "bolo", "bolo de chocolate",
            "torta de maçã", "cheesecake", "pudim", "brigadeiro", "beijinho",
            "quindim", "mousse de chocolate", "sorvete", "picolé", "açaí",
            "paçoca", "pé de moleque", "cocada", "doce de leite", "goiabada",
            "biscoito", "bolacha", "muffin", "brownie", "rosquinha",
            "chocolate", "bala", "pirulito", "chiclete", "pipoca",
            "amendoim", "castanha", "nozes", "pistache", "mel",
            "geleia", "maionese", "ketchup", "mostarda", "molho de tomate",
            "vinagre", "azeite", "sal", "açúcar", "pimenta",
            "água", "água com gás", "refrigerante", "guaraná", "coca-cola",
            "suco de laranja", "suco de uva", "limonada", "chá", "chá verde",
            "café", "cappuccino", "chocolate quente", "milk-shake", "vitamina",
            "caldo de cana", "água de coco", "cerveja", "chopp", "vinho tinto",
            "vinho branco", "espumante", "champanhe", "uísque", "vodca",
            "rum", "gim", "tequila", "conhaque", "cachaça",
            "caipirinha", "coquetel", "sangria",
        ]),
        WordCategory(id: "countries", symbol: "globe.europe.africa.fill", name: "Países", words: [
            "Afeganistão", "Egito", "Albânia", "Argélia", "Angola",
            "Argentina", "Armênia", "Azerbaijão", "Etiópia", "Austrália",
            "Guiné Equatorial", "Bahamas", "Bahrein", "Bangladesh", "Barbados",
            "Bélgica", "Belize", "Benim", "Butão", "Bolívia",
            "Bósnia e Herzegovina", "Botsuana", "Brasil", "Brunei", "Bulgária",
            "Burquina Faso", "Burundi", "Chile", "China", "Costa Rica",
            "Dinamarca", "República Democrática do Congo", "Alemanha", "Dominica", "República Dominicana",
            "Djibuti", "Equador", "El Salvador", "Costa do Marfim", "Eritreia",
            "Estônia", "Fiji", "Finlândia", "França", "Gabão",
            "Gâmbia", "Geórgia", "Gana", "Granada", "Grécia",
            "Guatemala", "Guiné", "Guiné-Bissau", "Guiana", "Haiti",
            "Honduras", "Índia", "Indonésia", "Iraque", "Irã",
            "Irlanda", "Islândia", "Israel", "Itália", "Jamaica",
            "Japão", "Iêmen", "Jordânia", "Camboja", "Camarões",
            "Canadá", "Cabo Verde", "Catar", "Cazaquistão", "Quênia",
            "Quirguistão", "Kiribati", "Colômbia", "Comores", "Congo",
            "Kosovo", "Croácia", "Cuba", "Kuwait", "Laos",
            "Lesoto", "Letônia", "Líbano", "Libéria", "Líbia",
            "Lituânia", "Luxemburgo", "Madagascar", "Malaui", "Malásia",
            "Maldivas", "Mali", "Malta", "Marrocos", "Ilhas Marshall",
            "Mauritânia", "Maurício", "México", "Micronésia", "Moldávia",
            "Mongólia", "Montenegro", "Moçambique", "Mianmar", "Namíbia",
            "Nauru", "Nepal", "Nova Zelândia", "Nicarágua", "Países Baixos",
            "Níger", "Nigéria", "Coreia do Norte", "Macedônia do Norte", "Noruega",
            "Omã", "Áustria", "Paquistão", "Palau", "Panamá",
            "Papua-Nova Guiné", "Paraguai", "Peru", "Filipinas", "Polônia",
            "Portugal", "Ruanda", "Romênia", "Rússia", "Ilhas Salomão",
            "Samoa", "Zâmbia", "São Tomé e Príncipe", "Arábia Saudita", "Suécia",
            "Suíça", "Senegal", "Sérvia", "Seicheles", "Serra Leoa",
            "Zimbábue", "Singapura", "Eslováquia", "Eslovênia", "Somália",
            "Espanha", "Sri Lanka", "São Cristóvão e Névis", "Santa Lúcia", "São Vicente e Granadinas",
            "África do Sul", "Sudão", "Coreia do Sul", "Sudão do Sul", "Suriname",
            "Essuatíni", "Síria", "Tajiquistão", "Tanzânia", "Tailândia",
            "Timor-Leste", "Togo", "Tonga", "Trinidad e Tobago", "Chade",
            "República Tcheca", "Tunísia", "Turcomenistão", "Turquia", "Tuvalu",
            "Uganda", "Ucrânia", "Hungria", "Uruguai", "Uzbequistão",
            "Vanuatu", "Venezuela", "Emirados Árabes Unidos", "Estados Unidos", "Reino Unido",
            "Vietnã", "Bielorrússia", "República Centro-Africana", "Chipre",
        ]),
        WordCategory(id: "sports", symbol: "figure.run", name: "Esportes", words: [
            "futebol", "basquete", "tênis", "vôlei", "handebol",
            "hóquei no gelo", "natação", "atletismo", "ginástica", "ciclismo",
            "boxe", "luta livre", "judô", "caratê", "taekwondo",
            "esgrima", "tiro com arco", "tiro esportivo", "remo", "canoagem",
            "vela", "surfe", "windsurfe", "kitesurfe", "mergulho",
            "polo aquático", "nado sincronizado", "saltos ornamentais", "triatlo", "maratona",
            "corrida", "corrida com barreiras", "salto em altura", "salto em distância", "salto triplo",
            "salto com vara", "arremesso de dardo", "lançamento de disco", "lançamento de martelo", "arremesso de peso",
            "decatlo", "heptatlo", "esqui", "snowboard", "esqui cross-country",
            "salto de esqui", "biatlo", "bobsled", "luge", "skeleton",
            "patinação artística", "patinação de velocidade", "curling", "golfe", "rugby",
            "futebol americano", "beisebol", "softbol", "críquete", "hóquei sobre grama",
            "lacrosse", "badminton", "squash", "tênis de mesa", "basquete em cadeira de rodas",
            "patins", "patinação inline", "skate", "BMX", "mountain bike",
            "ciclismo de estrada", "ciclismo de pista", "crossfit", "levantamento de peso", "fisiculturismo",
            "ioga", "pilates", "aeróbica", "zumba", "dança",
            "balé", "breakdance", "escalada", "boulder", "montanhismo",
            "caminhada", "paraquedismo", "parapente", "asa-delta", "bungee jump",
            "hipismo", "salto a cavalo", "adestramento", "polo", "corrida de cavalos",
            "automobilismo", "Fórmula 1", "rali", "motocross", "kart",
            "boliche", "sinuca", "dardos", "xadrez", "bocha",
            "petanca", "padel", "vôlei de praia", "futebol de areia", "futsal",
            "futevôlei", "capoeira", "jiu-jitsu", "muay thai", "kickboxing",
            "MMA", "aikido", "kendo", "kung fu", "sumô",
            "corrida de obstáculos", "corrida de revezamento", "parkour", "stand up paddle", "rafting",
            "pentatlo moderno", "jogging", "caminhada nórdica", "spinning",
            "beach tennis", "frescobol", "peteca", "handebol de areia", "stand up paddle surf",
            "esqui aquático", "wakeboard", "bodyboard", "mergulho livre", "canoagem slalom",
            "tiro ao prato", "corrida de rua", "ultramaratona", "duatlo",
        ]),
        WordCategory(id: "jobs", symbol: "briefcase.fill", name: "Profissões", words: [
            "médico", "enfermeiro", "dentista", "veterinário", "farmacêutico",
            "cirurgião", "pediatra", "psiquiatra", "paramédico", "fisioterapeuta",
            "optometrista", "radiologista", "advogado", "juiz", "promotor",
            "tabelião", "policial", "bombeiro", "soldado", "oficial",
            "aduaneiro", "professor", "reitor", "pedagogo", "assistente social",
            "psicólogo", "bibliotecário", "engenheiro", "arquiteto", "cientista da computação",
            "programador", "eletricista", "encanador", "marceneiro", "carpinteiro",
            "pedreiro", "telhadista", "pintor", "serralheiro", "soldador",
            "mecânico", "mecânico de automóveis", "agricultor", "jardineiro", "guarda florestal",
            "pescador", "cozinheiro", "padeiro", "confeiteiro", "açougueiro",
            "garçom", "barman", "cabeleireiro", "esteticista", "alfaiate",
            "sapateiro", "relojoeiro", "ourives", "contador", "consultor financeiro",
            "bancário", "auditor", "empresário", "gerente", "diretor",
            "comerciante", "vendedor", "caixa", "logístico", "motorista de caminhão",
            "taxista", "motorista de ônibus", "piloto", "comissário de bordo", "maquinista",
            "marinheiro", "capitão", "jornalista", "editor", "fotógrafo",
            "cinegrafista", "ator", "diretor de cinema", "cantor", "músico",
            "dançarino", "artista", "escultor", "designer gráfico", "web designer",
            "escritor", "tradutor", "intérprete", "atleta", "técnico",
            "personal trainer", "nutricionista", "cientista", "químico", "físico",
            "biólogo", "matemático", "astronauta", "geólogo", "meteorologista",
            "urbanista", "designer de interiores", "mineiro", "cervejeiro", "artesão",
            "zelador", "faxineiro", "segurança", "detetive", "agente funerário",
            "costureira", "manicure", "maquiador", "barbeiro", "técnico em eletrônica",
            "recepcionista", "secretária", "porteiro", "carteiro", "motoboy",
            "guia turístico", "árbitro", "locutor", "radialista", "apresentador",
            "comediante", "mágico", "palhaço", "modelo", "estilista",
            "joalheiro", "florista", "sorveteiro", "pizzaiolo", "sommelier",
            "pescador de alto-mar", "salva-vidas", "vigia", "frentista", "feirante",
            "chaveiro", "tatuador", "massagista", "podólogo", "fonoaudiólogo",
            "nutricionista esportivo", "corretor de imóveis", "corretor de seguros", "economista", "administrador",
        ]),
        WordCategory(id: "objects", symbol: "lightbulb.fill", name: "Objetos do Dia a Dia", words: [
            "escova de dentes", "pasta de dente", "sabonete", "toalha", "pente",
            "escova de cabelo", "espelho", "tesoura", "cortador de unha", "barbeador",
            "secador de cabelo", "xampu", "sabonete líquido", "esponja", "papel higiênico",
            "banheira", "chuveiro", "pia", "prato", "tigela",
            "xícara", "copo", "panela", "frigideira", "faca",
            "garfo", "colher", "colher de chá", "batedor", "tábua de corte",
            "abridor de latas", "saca-rolhas", "ralador", "peneira", "balança de cozinha",
            "chaleira", "torradeira", "liquidificador", "cafeteira", "micro-ondas",
            "forno", "geladeira", "freezer", "lava-louças", "fogão",
            "papel-toalha", "papel-alumínio", "filme plástico", "lixeira", "vassoura",
            "pá de lixo", "rodo", "aspirador de pó", "detergente", "sabão em pó",
            "máquina de lavar", "secadora", "ferro de passar", "tábua de passar", "cesto de roupa",
            "prendedor de roupa", "sofá", "poltrona", "cadeira", "mesa",
            "escrivaninha", "cama", "colchão", "travesseiro", "cobertor",
            "lençol", "guarda-roupa", "estante", "cômoda", "criado-mudo",
            "lâmpada", "abajur", "cortina", "persiana", "tapete",
            "capacho", "porta-retrato", "relógio de parede", "despertador", "televisão",
            "controle remoto", "rádio", "caixa de som", "computador", "notebook",
            "teclado", "mouse", "monitor", "impressora", "telefone",
            "celular", "carregador", "fone de ouvido", "câmera", "pilha",
            "martelo", "chave de fenda", "alicate", "serra",
            "furadeira", "parafuso", "prego", "fita adesiva", "trena",
            "nível", "escada", "balde", "regador", "mangueira",
            "pá", "rastelo", "cortador de grama", "chave", "cadeado",
            "maçaneta", "caixa de correio", "guarda-chuva", "mochila", "bolsa",
            "carteira", "óculos", "óculos de sol", "relógio de pulso", "anel",
            "colar", "pulseira", "chapéu", "boné", "cachecol",
            "luvas", "jaqueta", "casaco", "calça", "camisa",
            "camiseta", "suéter", "vestido", "saia", "meias",
            "cueca", "sapatos", "botas", "sandálias", "cinto",
            "gravata", "avental", "pijama", "chinelo", "lápis",
            "caneta", "borracha", "régua", "grampeador", "furador",
            "envelope", "caderno", "calendário", "pasta", "cola",
            "post-it", "livro", "jornal", "revista", "baralho",
            "dado", "quebra-cabeça", "vela", "fósforos", "isqueiro",
            "vaso", "vaso de flores", "cinzeiro", "almofada", "termômetro",
            "curativo", "comprimido", "cotonete", "algodão", "pinça",
            "ventilador", "ar-condicionado", "garrafa térmica", "garrafa de água", "marmita",
            "bandeja", "porta-copos", "rolo de macarrão", "espremedor", "descascador",
            "lanterna", "esmalte", "guardanapo", "palito de dente", "toalha de mesa",
        ]),
        WordCategory(id: "instruments", symbol: "guitars.fill", name: "Instrumentos Musicais", words: [
            "violino", "viola", "violoncelo", "contrabaixo", "harpa",
            "violão", "guitarra", "guitarra elétrica", "baixo", "ukulele",
            "bandolim", "banjo", "alaúde", "cítara", "piano",
            "piano de cauda", "cravo", "órgão", "acordeão", "sanfona",
            "gaita", "concertina", "flauta", "flauta transversal", "flauta doce",
            "flautim", "oboé", "corne-inglês", "fagote", "contrafagote",
            "clarinete", "clarinete baixo", "saxofone", "sax alto", "sax tenor",
            "sax soprano", "sax barítono", "trompete", "corneta", "trompa",
            "flugelhorn", "trombone", "tuba", "eufônio", "sousafone",
            "bateria", "tímpano", "caixa", "pratos", "pandeiro",
            "triângulo", "carrilhão", "xilofone", "marimba", "vibrafone",
            "tambor", "bumbo", "bongô", "conga", "djembê",
            "cajón", "castanholas", "maracas", "clave", "steel drum",
            "sino", "celesta", "teremim", "sintetizador", "teclado",
            "piano elétrico", "gaita de foles", "didgeridoo", "flauta de pã", "ocarina",
            "apito", "sitar", "tabla", "shamisen", "koto",
            "erhu", "balalaica", "bouzouki", "oud", "darbuka",
            "kalimba", "kora", "bandoneón", "melódica", "handpan",
            "kazoo", "berimbau", "pandeiro brasileiro", "cuíca", "atabaque",
            "surdo", "tamborim", "agogô", "reco-reco", "ganzá",
            "repique", "cavaquinho", "zabumba", "triângulo nordestino", "viola caipira",
            "pandeirola", "caxixi", "afoxé", "chocalho", "rabeca",
            "escaleta", "glockenspiel", "gongo", "prato de choque",
            "chimbal", "tom-tom", "timbales", "pífano",
            "sanfona de oito baixos", "harmônica de boca", "clarone", "corneta militar",
            "flauta andina", "charango", "quena", "tambor de mão", "flauta nativa",
        ]),
        WordCategory(id: "landmarks", symbol: "building.columns.fill", name: "Pontos Turísticos", words: [
            "Torre Eiffel", "Estátua da Liberdade", "Muralha da China", "Torre de Pisa", "Coliseu",
            "Taj Mahal", "Machu Picchu", "Acrópole", "Stonehenge", "Pirâmides de Gizé",
            "Esfinge de Gizé", "Angkor Wat", "Burj Khalifa", "Ópera de Sydney", "Big Ben",
            "Tower Bridge", "Portão de Brandemburgo", "Cataratas do Niágara", "Grand Canyon", "Monte Everest",
            "Monte Fuji", "Santorini", "Monte Uluru", "Cataratas Vitória", "Rio Amazonas",
            "Deserto do Saara", "Ilhas Galápagos", "Partenon", "Museu do Louvre", "Vaticano",
            "Basílica de São Pedro", "Capela Sistina", "Fontana di Trevi", "Palácio de Versalhes", "Alhambra",
            "Sagrada Família", "Park Güell", "Hagia Sophia", "Mesquita Azul", "Petra",
            "Borobudur", "Cidade Proibida", "Palácio de Potala", "Templo Senso-ji", "Fushimi Inari",
            "Castelo de Neuschwanstein", "Catedral de Colônia", "Muro de Berlim", "Checkpoint Charlie", "Reichstag",
            "Templo de Karnak", "Abu Simbel", "Monte Kilimanjaro", "Serengeti", "Montanha da Mesa",
            "Pirâmides de Teotihuacán", "Chichén Itzá", "Tikal", "Cristo Redentor", "Pão de Açúcar",
            "Cataratas do Iguaçu", "Salar de Uyuni", "Torres del Paine", "Bora Bora", "Great Barrier Reef",
            "Yellowstone", "Yosemite", "Monument Valley", "Vale da Morte", "Monte Rushmore",
            "Golden Gate", "Empire State Building", "Chrysler Building", "Ponte do Brooklyn", "Casa Branca",
            "Memorial Lincoln", "Monumento a Washington", "Times Square", "Central Park", "Letreiro de Hollywood",
            "Las Vegas Strip", "Montanhas Rochosas", "Castelo de Edimburgo", "Palácio de Buckingham", "Castelo de Windsor",
            "Torre de Londres", "Observatório de Greenwich", "Penhascos de Moher", "Calçada dos Gigantes", "Lago Ness",
            "Pompeia", "Fórum Romano", "Panteão", "Castelo de Sant'Angelo", "Praça de São Marcos",
            "Grande Canal de Veneza", "Praça Navona", "Cinque Terre", "Costa Amalfitana", "Dubrovnik",
            "Lagos de Plitvice", "Gruta Azul de Capri", "Olímpia", "Delfos", "Meteora",
            "Palácio de Schönbrunn", "Catedral de Santo Estêvão", "Hallstatt", "Torre CN", "Parque Banff",
            "Matterhorn", "Jungfraujoch", "Cataratas do Reno", "Atomium", "Manneken Pis",
            "Moinhos de Kinderdijk", "Casa de Anne Frank", "Rijksmuseum", "Tivoli de Copenhague", "Fiordes da Noruega",
            "Geirangerfjord", "Aurora Boreal", "Torre de Belém", "Mosteiro dos Jerónimos", "Santuário de Fátima",
            "Ponte Dom Luís I", "Castelo de Guimarães", "Pelourinho", "Elevador Lacerda", "Teatro Amazonas",
            "Lençóis Maranhenses", "Chapada Diamantina", "Fernando de Noronha", "Praia de Copacabana", "Praia de Ipanema",
            "Maracanã", "Catedral de Brasília", "Congresso Nacional", "Museu do Amanhã", "Theatro Municipal de São Paulo",
            "Avenida Paulista", "Jardim Botânico do Rio", "Gran Sabana",
            "Deserto do Atacama", "Ilha de Páscoa", "Patagônia", "Perito Moreno", "Caminho Inca",
            "Lago Titicaca", "Rio Nilo", "Templo de Luxor", "Monte Sinai",
        ]),
    ]
}
