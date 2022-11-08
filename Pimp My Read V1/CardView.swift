//
//  CardView.swift
//  Pimp My Read
//
//  Created by Apprenant 89 on 21/09/2022.
//

import SwiftUI

struct CardView: View {
    var book:Card
    @State private var offset = CGSize.zero
    //    @Binding var offset: CGSize
    @State private var color: Color = .white
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 440)
                .cornerRadius(20)
                .foregroundColor(color.opacity(1))
                .shadow(radius: 2)
                .padding(.bottom, 15)
            Image(book.bookImage)
                .resizable()
                .frame(width: 250, height: 390)
                .padding(.bottom, 15)
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged {
                    gesture in offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }.onEnded {_ in
                    withAnimation {
                        swipeCard(width: offset.width)
                        changeColor(width: offset.width)
                    }
                }
        )
    }
    
    
    func swipeCard(width:CGFloat) {
        switch width {
        case -500...(-150):
            //            print("\(book) enlevé")
            offset = CGSize(width: -500, height: 0)
            
        case 150...500:
            //            print("\(book) ajouté")
            offset = CGSize(width: 500, height: 0)
        default: offset = .zero
        }
    }
    
    func changeColor(width:CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .white
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(book: Card(bookName: "Naruto", bookImage: "Naruto"))
    }
}
