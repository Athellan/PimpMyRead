//
//  MatchingCards2.swift
//  Pimp My Read
//
//  Created by Apprenant 89 on 22/09/2022.
//

import SwiftUI

struct MatchingCards2: View {
    
    // @State private var offset = CGSize.zero
    @State private var hasReset:Bool = false
    
    var books: [Card] = [
        Card(bookName: "Naruto", bookImage: "Naruto"),
        Card(bookName: "One Piece", bookImage: "OnePiece"),
        Card(bookName: "Hunter x Hunter", bookImage: "HxH"),
        Card(bookName: "Wakfu", bookImage: "Wakfu"),
        Card(bookName: "Fairy Tail", bookImage: "FairyTail"),
        Card(bookName: "Hitman", bookImage: "Hitman"),
        Card(bookName: "Jujutsu Kaison", bookImage: "JJK"),
        Card(bookName: "One Punch Man", bookImage: "OPM"),
        Card(bookName: "Chronos Ruler", bookImage: "ChronosRuler"),
        Card(bookName: "Naruto", bookImage: "Naruto")
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
                            .foregroundColor(.red)
                            .padding()
                            .background(Color.red.opacity(0.3))
                            .cornerRadius(15)
                            .font(.custom("Hey Comic", size: 15))
                            .padding(.bottom,10)
                        Text("Humour")
                            .frame( height: 10)
                            .foregroundColor(.blue)
                            .padding()
                            .background(Color.blue.opacity(0.3))
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
struct MatchingCards2_Previews: PreviewProvider {
    static var previews: some View {
        MatchingCards2()
    }
}
