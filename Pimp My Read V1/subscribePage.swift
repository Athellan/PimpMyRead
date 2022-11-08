//
//  backgroundBlue.swift
//  Pimp My Read
//
//  Created by Apprenant 94 on 19/09/2022.
//
//
//import SwiftUI
//
//struct subscribePage: View {
//    @Binding var showLogin: Int
//    @Binding var chosenName: String
//    var body: some View {
//        NavigationView {
//        ZStack {
//            Color("mainColor")
//                .ignoresSafeArea()
//            HStack {
//                VStack {
//                Text("Bienvenue")
//                        .font(.custom("Hey Comic", size: 35))
//                Image("imgTest")
//                        .resizable()
//                        .clipShape(Circle())
//                        .frame(width: 250, height: 250)
//                        .padding(40)
//                    NavigationLink(destination: LogIn(username: $chosenName, showDetail: $showLogin)) {
//                    Text("Rejoindre!")
//                    .bold()
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color("secondaryColor"))
//                    .cornerRadius(15)
//                    .padding(120)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct subscribePage_Previews: PreviewProvider {
//    static var previews: some View {
//        subscribePage(showLogin: .constant(3), chosenName: .constant(""))
//    }
//}
