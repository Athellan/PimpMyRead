import SwiftUI

struct BooksRow: View {
    var book: Books

    var body: some View {
        HStack {
            Image(book.image)
                .resizable()
                .frame(width: 100, height: 150)
                .scaledToFit()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                .cornerRadius(10)
                .foregroundColor(Color("secondaryColor"))
                .padding(.top, 5)
                .padding(.bottom, 5)
            VStack (alignment: .leading){
                Text(book.title)
                Text(book.writer)
                HStack {
                    Text(book.categories[0])
                        .frame( height: 10)
                        .padding(15)
                        .background(getStatus(category: book.categoryType[0]).opacity(0.3))
                        .cornerRadius(15)
                        .font(.custom("Hey Comic", size: 12))
                    
                    Text(book.categories[1])
                        .frame( height: 10)
                        .padding(15)
                        .background(getStatus(category: book.categoryType[1]).opacity(0.3))
                        .cornerRadius(15)
                    .font(.custom("Hey Comic", size: 12))
                }
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, -5)
    }
}

enum CategoryType {
    case Action, Humour, Fantasy, Adultes, Ados, Jeunes, Futuriste, Historique, Aventure
}

func getStatus(category: CategoryType) -> Color? {
    switch category {
    case .Action:
        return .red
    case .Humour:
        return .blue
    case .Fantasy:
        return .green
    case .Adultes:
        return Color("CtgAdultes_Color")
    case .Ados:
        return .pink
    case .Jeunes:
        return .cyan
    case .Futuriste:
        return .orange
    case .Historique:
        return .yellow
    case .Aventure:
        return Color("CtgAventure_Color")
    }
}

struct Books: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var categories: [String]
    var style: String
    var description: String
    var writer: String
    var IsChosen: Bool
    var arguments: [String]
    var categoryType: [CategoryType]
}

struct ListBooks: View {
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color("mainColor"))
    }
    
    @State private var searchtext: String = ""
    @State private var listBooks = [
        Books(title: "One Piece", image: "OnePiece", categories: ["Action", "Humour"], style: "Manga", description: "Dans One Piece, nous suivons l???histoire d???un jeune pirate, Monkey D. Luffy... ",writer: "Eichiro ODA", IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Action, .Humour]),
        Books(title: "Okko", image: "Okko", categories: ["Fantasy", "Humour"], style: "BD", description: "Loin des champs de bataille, o?? les clans s'entred??chirent pour le pouvoir, Okko, le r??nin...",writer: "HUB", IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Fantasy, .Humour]),
        Books(title: "Batman", image: "Batman", categories: ["Action", "Aventure"], style: "Comics", description: "Pour combattre les criminels, Bruce Wayne cr??e une nouvelle identit??. Ainsi na??t le Bat-Man ...", writer: "Bob KANE", IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Action, .Aventure]),
        Books(title: "Naruto", image: "Naruto", categories: ["Action", "Aventure"], style: "Manga", description: "L???histoire commence dans le village cach?? de Konoha autour d???un petit enfant orphelin...", writer: "Masashi KISHIMOTO",IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Action, .Aventure]),
        Books(title: "Hunter x Hunter", image: "HxH", categories: ["Action", "Aventure"], style: "Manga", description: "Gon Freecss est un jeune gar??on de 12 ans et habite avec sa grand-m??re et sa tante...",writer: "Yoshihiro TOGASHI", IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Action, .Aventure]),
        Books(title: "1984", image: "1984", categories: ["Fantasy", "Futuriste"], style: "Roman Graphique", description: "1984, le chef-d?????uvre de George Orwell, fait partie des plus grands textes du XXe si??cle...", writer: "George ORWELL", IsChosen: true, arguments: ["atmosph??re envo??tante", "chef-d?????uvre"], categoryType: [.Fantasy, .Futuriste]),
        Books(title: "Corto Maltese", image: "CortoMaltese", categories: ["Fantasy", "Adultes"], style: "BD", description: "Aventurier charmeur et ironique, Corto Maltese - amoureux de sa libert?? et des femmes -...", writer: "Hugo PRATT", IsChosen: true, arguments: ["Premier roman graphique Franco-Belge", "Saga po??tique"], categoryType: [.Fantasy, .Adultes]),
        Books(title: "Garfield", image: "Garfield", categories: ["Humour", "Ados"], style: "BD", description: "On ne pr??sente plus ce chat fain??ant, infect, et m??chant qu???est Garfield. D??sabus??, il jette sur le monde un regard acari??tre et n???h??site pas ?? le dire franchement aux quelques humains (et non humains) qui ??voluent dans sa sph??re.", writer: "Jim DAVIS", IsChosen: true, arguments: ["Un classique toujours aussi amusant", "un humour d??capant"], categoryType: [.Humour, .Ados]),
        Books(title: "Camus", image: "Camus", categories: ["Adultes", "Historique"], style: "roman graphique", description: "Ce roman graphique de plus de 100 pages retrace la vie d'Albert Camus qui demeure, plus de 50 ans apr??s sa mort, l'un des ??crivains fran??ais les plus populaires et les plus ??tudi??s.", writer: "Jos?? LENZINI", IsChosen: true, arguments: ["Magnifique biographie", "Un roman graphique de r??f??rence"], categoryType: [.Historique, .Adultes]),
        Books(title: "AYA", image: "Aya", categories: ["Jeunes", "Humour"], style: "BD", description: "C??te d'Ivoire, 1978. Aya, dix-neuf ans, vit ?? Yopougon, un quartier populaire d'Abidjan. ??a sent le d??but des vacances mais tr??s vite les choses vont commencer ?? se g??ter???", writer: "Cl??ment OUBRERIE", IsChosen: true, arguments: ["Absorbant", "paysage urbain ivoirien"], categoryType: [.Jeunes, .Humour]),
        Books(title: "Spirou", image: "Spirou", categories: ["Action", "Ados"], style: "BD", description: "En 1989, ?? Bruxelles, il faut croire qu'il ne se passe pas assez de choses pour remplir les Unes. En tout cas, Fantasio est incapable de trouver le scoop dont son r??dac-chef a d??sesp??r??ment besoin.", writer: "Jij??", IsChosen: true, arguments: ["Captivant", "Grand classic"], categoryType: [.Action, .Ados]),
        Books(title: "Goya", image: "Goya", categories: ["Historique", "Jeunes"], style: "BD", description: "Goya, le g??nie tourment??.1793, Cadix. Alit??, Francisco de Goya se r??tablit suite ?? une ??trange affliction qui va le laisser sourd. Maladie ou mal??diction ? ", writer: "El TORRES", IsChosen: true, arguments: ["Tout public", "Une ??uvre originale"], categoryType: [.Historique, .Jeunes]),
        Books(title: "My Hero Academia", image: "MyHeroAcademia", categories: ["Action", "Aventure"], style: "BD", description: "Izuku Midoriya est un adolescent normal dans un monde o?? 80% de la population poss??de un alter (super-pouvoir). Mais sa vie va radicalement changer apr??s sa rencontre avec All Might..", writer: "Kohei HORIKISHI", IsChosen: true, arguments: ["Des combats ??piques", "un r??cit maitris?? "], categoryType: [.Action, .Aventure]),
        Books(title: "Chronos Ruler", image: "ChronosRuler", categories: ["Action", "Aventure"], style: "BD", description: "Engloutir les t??n??bres pour mieux les combattre ! Chaque ann??e au Japon, on recense plus de 10 000 morts inexpliqu??es et port??s disparus.", writer: "Ponjea", IsChosen: true, arguments: ["Original", "Un d??part solide et efficace"], categoryType: [.Action, .Aventure]),
        Books(title: "Atom[ka]", image: "Atomka", categories: ["Action", "Aventure"], style: "BD", description: "GUn journaliste est retrouv?? mort alors qu'il enqu??tait sur des meurtres datant de plusieurs ann??es et que la police n'avait pas reli??s entre eux. Un enfant apparemment ??tranger est retrouv?? en piteux ??tat..", writer: "Brian CLEVINGER", IsChosen: true, arguments: ["Roman policier", "Des dessins incroyables"], categoryType: [.Action, .Aventure]),
        Books(title: "One Punch Man", image: "OPM", categories: ["Action", "Humour"], style: "BD", description: "Un journaliste est retrouv?? mort alors qu'il enqu??tait sur des meurtres datant de plusieurs ann??es et que la police n'avait pas reli??s entre eux. Un enfant apparemment ??tranger est retrouv?? en piteux ??tat", writer: "Kohei HORIKISHI", IsChosen: true, arguments: ["Un coup de poing graphique", "Humour d??routant"], categoryType: [.Action, .Humour]),
        Books(title: "Alvin", image: "Alvin", categories: ["Ados", "Aventure"], style: "BD", description: "Gaston vit ?? New-York hant?? par le souvenir d'Abelard son ami disparus. Mais sa vie va basculer lorsque Purity, une prostitu??e qu'il c??toie r??guli??rement, va mourir des suites de blessures inflig?? par un client.", writer: "R??gis HAUTIERE", IsChosen: true, arguments: ["Sc??nario poignant", "Dessinateur de talent"], categoryType: [.Ados, .Aventure]),
        Books(title: "Harley QUINN", image: "HarleyQuinn", categories: ["Action", "Aventure"], style: "BD", description: "L'ancienne psychiatre Harleen Quinzel n'est pas le genre de femme ?? se satisfaire d'une vie convenable et tranquille. Elle fuit la routine comme la peste et cherche par tous les moyens ?? faire de sa vie une aventure.", writer: "Amanda CONNER", IsChosen: true, arguments: ["DC classic", "P??tillant"], categoryType: [.Action, .Aventure]),
        Books(title: "Vampironica", image: "Vampironica", categories: ["Action", "Aventure"], style: "BD", description: "Vampire + Veronica = amour ??ternel ?Veronica Lodge s???est fait mordre par un vampire centenaire et sa soif de sang menace de transformer l???int??gralit?? de la population de Riverdale en b??tes violentes et survolt??es.", writer: "Mel SMALLWOOD", IsChosen: true, arguments: ["Oeuvre ?? suspence", "Romance de lyc??e", "Action d??brid??e"], categoryType: [.Action, .Aventure]),
        Books(title: "Badlands", image: "Badlands", categories: ["Action", "Aventure"], style: "BD", description: "Car le monde invisible v??n??r?? par les Indiens et d??crit par son a??eul deux si??cles plus t??t n???a pas disparu ! Il a ??t?? dissimul?? aux yeux des blancs pour ??viter que ceux-ci ne s???emparent des pouvoirs qui lui sont associ??s.", writer: "Saki AIKAWA", IsChosen: true, arguments: ["Des combats ??piques", "Des dessins incroyables", "La piraterie comme on l'aime"], categoryType: [.Action, .Aventure]),
        Books(title: "Tout Un Monde", image: "ToutUnMonde", categories: ["Histoire", "Ados"], style: "BD", description: "Qu'ils vivent dans un ??co-lieu, dans une tiny-house ou un d??me g??od??sique, les personnes qu'??milie a rencontr?? ont fait le choix de vivre en accord avec leurs convictions ??cologiques, ??conomiques ou sociales.", writer: "Emilie SAITAS", IsChosen: true, arguments: ["Actualit??", "Des dessins incroyables", "Tout public"], categoryType: [.Historique, .Ados]),
        Books(title: "Elfes", image: "Elfes", categories: ["Action", "Aventure"], style: "BD", description: "Gon Freecss est un jeune gar??on de 12 ans et habite avec sa grand-m??re et sa tante..", writer: "Jean-Luc ISTIN", IsChosen: true, arguments: ["Des combats ??piques", "Monde m??di??val onirique"],categoryType: [.Action, .Aventure])]
    
    func delete(at offsets: IndexSet) {
        listBooks.remove(atOffsets: offsets)
    }
    
    private var searchResults: [Books] {
        let results = BookProvider.all()
        if searchtext.isEmpty { return results }
        return results.filter {
            $0.title.contains(searchtext) || $0.image.contains(searchtext)
        }
    }
    
    
    var body: some View {
        
        NavigationView {
            //            ScrollViewReader {_ in
            //                List (listBooks){ book in
            //                    NavigationLink(destination: BooksDetailsView(book: book)){
            //                        BooksRow( book: book)
            List {
                ForEach(listBooks.filter { $0.title.hasPrefix(searchtext) }) { listBook in
                    NavigationLink(destination: BooksDetailsView(book: listBook)) {
                        BooksRow(book: listBook)
                    }.font(.custom("Hey Comic", size: 15))
                        .listRowBackground(Color("mainColor"))
                        .listRowSeparatorTint(.black)
                }
                .onDelete(perform: delete)
                
            }

            
            .navigationTitle("Biblioth??que")
            .font(.custom("Hey Comic", size: 20))
            .padding(.leading, 1)
            .searchable(
                text: $searchtext,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Je recherche ...")
            .font(.custom("Hey Comic", size: 15))
        }
    }
}



struct ListBooks_Previews: PreviewProvider {
    static var previews: some View {
        ListBooks()
        
    }
}

