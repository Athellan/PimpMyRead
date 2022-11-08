//
//  MatchingCards.swift
//  Pimp My Read
//
//  Created by Apprenant 89 on 21/09/2022.
//

import SwiftUI

struct MatchingCards: View {
    @State private var offset = CGSize.zero
    @State private var books: [Card] = [
        Card(bookName: "Naruto", bookImage: "Naruto"),
        Card(bookName: "Batman", bookImage: "Batman"),
        Card(bookName: "Buffy", bookImage: "Buffy"),
        Card(bookName: "Corto Maltese ", bookImage: "CortoMaltese"),
        Card(bookName: "Alvin", bookImage: "Alvin"),
        Card(bookName: "One Piece", bookImage: "OnePiece"),
        Card(bookName: "Harley Quinn", bookImage: "HarleyQuinn"),
        Card(bookName: "Badlands", bookImage: "Badlands"),
        Card(bookName: "Fairy Tail", bookImage: "FairyTail"),
        Card(bookName: "Tout Un Monde", bookImage: "ToutUnMonde"),
        Card(bookName: "Vampironica", bookImage: "Vampironica"),
        Card(bookName: "1984", bookImage: "1984"),
        Card(bookName: "Hunter x Hunter", bookImage: "HxH"),
        Card(bookName: "One Punch Man", bookImage: "OPM"),
        Card(bookName: "Goya", bookImage: "Goya"),
        Card(bookName: "Okko", bookImage: "Okko"),
        Card(bookName: "Chronos Ruler", bookImage: "ChronosRuler"),
        Card(bookName: "Atom[ka]", bookImage: "Atomka"),
        Card(bookName: "Jujutsu Kaison", bookImage: "JJK"),
        Card(bookName: "Spirou", bookImage: "Spirou"),
        Card(bookName: "Elfes", bookImage: "Elfes"),
    ].reversed()
    
    var body: some View {
        ZStack {
            Color("mainColor")
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Text("Swipe à droite")
                        Image("swipe-right-1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                        Text("et ajoute à ta")
                        Image("books")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                            .padding(2)
                    }.font(.custom("Hey Comic", size: 15))
                    HStack {
                        Text("Swipe à gauche")
                        Image("swipe-left-1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                        Text("et change de")
                        Image("return")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                    }.font(.custom("Hey Comic", size: 15))
                    
                    HStack {
                        Text("Action")
                            .frame( height: 10)
                            .foregroundColor( Color("mainColor"))
                            .padding()
                            .background(Color("mainColor"))
                            .cornerRadius(15)
                            .font(.custom("Hey Comic", size: 15))
                            .padding(.bottom,10)
                        Text("Humour")
                            .frame( height: 10)
                            .foregroundColor( Color("mainColor"))
                            .padding()
                            .background(Color("mainColor"))
                            .cornerRadius(15)
                            .font(.custom("Hey Comic", size: 15))
                            .padding(.bottom,10)
                    }
                }
                ZStack {
                    Image("noList")
                        .resizable()
                        .frame(width: 250, height: 350)
                        .padding()
                    ForEach(books) {book in CardView(book: book)
                    }
                }
            }
        }
    }
}


struct Card: Identifiable {
    var id = UUID()
    let bookName:String
    let bookImage:String
}

struct MatchingCards_Previews: PreviewProvider {
    static var previews: some View {
        MatchingCards()
    }
}
