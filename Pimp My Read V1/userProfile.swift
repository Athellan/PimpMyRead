//
//  userProfile.swift
//  Pimp My Read
//
//  Created by Apprenant 89 on 20/09/2022.
//

import SwiftUI

struct userProfile: View {
    @State private var isChosenManga:Bool = false
    @State private var isChosenBD:Bool = false
    @State private var isChosenComics:Bool = false
    @State private var isChosenRG:Bool = false
    // state buttons
    @State private var isSelected1:Bool = false
    @State private var isSelected2:Bool = false
    @State private var isSelected3:Bool = false
    @State private var isSelected4:Bool = false
    @State private var isSelected5:Bool = false
    @State private var isSelected6:Bool = false
    @State private var isSelected7:Bool = false
    @State private var isSelected8:Bool = false
    @State private var isSelected9:Bool = false
    //
    @State private var baseBackground:Color = Color.white
    @Binding var username:String
    var body: some View {
        
        ScrollView {
            ZStack {
                Color("mainColor")
                    .ignoresSafeArea()
                VStack {
                    // En-tete
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color("mainBlue"))
                                .border(Color("secondaryColor"))
                            VStack {
                                Image("imgTest")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 100, height: 100)
                                    .padding(.top,50)
                                Text(username)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                                    .foregroundColor(Color("secondaryColor"))
                                    .font(.custom("Hey Comic", size: 30))
                            }
                        }
                    }
                    // Selection Livres
                    HStack {
                        Text("Proposez moi ")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                            .font(.custom("Hey Comic", size: 22))
                    }
                    .padding()
                    .foregroundColor(Color("secondaryColor"))
                    
                    HStack {
                        Image("manga")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, -20)
                        Toggle("Manga", isOn:$isChosenManga)
                            .toggleStyle(SwitchToggleStyle(tint: Color("secondaryColor")))
                            .font(.custom("Hey Comic", size: 18))
                            .padding(.horizontal)
                    }   .padding(.horizontal, 50)
                    HStack {
                        Image("comic")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, -20)
                        HStack {
                            Toggle("Comics", isOn:$isChosenBD)
                                .toggleStyle(SwitchToggleStyle(tint: Color("secondaryColor")))
                        }
                        .font(.custom("Hey Comic", size: 18))
                        .padding(.horizontal)
                    }.padding(.horizontal, 50)
                    HStack {
                        Image("bd")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, -20)
                        Toggle("BD", isOn:$isChosenComics)
                            .toggleStyle(SwitchToggleStyle(tint: Color("secondaryColor")))
                            .font(.custom("Hey Comic", size: 18))
                            .padding(.horizontal)
                    }.padding(.horizontal, 50)
                    HStack {
                        Image("roman")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, -20)
                        Toggle("Roman graphique", isOn:$isChosenRG)
                            .toggleStyle(SwitchToggleStyle(tint: Color("secondaryColor")))
                            .font(.custom("Hey Comic", size: 18))
                            .padding(.horizontal)
                    }
                    .padding(.horizontal, 50)
                    .padding(.bottom, 30)
                    Spacer()
                    VStack {
                        HStack {
                            Text("Mes styles ")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 16)
                                .foregroundColor(Color("secondaryColor"))
                                .font(.custom("Hey Comic", size: 22))
                        }
                        .padding()
                        .foregroundColor(Color("secondaryColor"))
                        
                        
                        HStack {
                            // Button 1
                            Button(action: {
                                isSelected1 = !isSelected1
                            }) {
                                VStack {
                                    Image("action")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Action")
                                        .foregroundColor(isSelected1 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .background(isSelected1 ? Color("secondaryColor") : baseBackground)
                            .cornerRadius(10)
                            // Button 2
                            Button(action: {
                                isSelected2 = !isSelected2
                            }) {
                                VStack {
                                    Image("adulte")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Adultes")
                                        .foregroundColor(isSelected2 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected2 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                            // Button 3
                            Button(action: {
                                isSelected3 = !isSelected3
                            }) {
                                VStack {
                                    Image("ado1")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Ados")
                                        .foregroundColor(isSelected3 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected3 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                        }
                        
                        HStack {
                            // Button 4
                            Button(action: {
                                isSelected4 = !isSelected4
                            }) {
                                VStack {
                                    Image("fantasy1")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Fantasy")
                                        .foregroundColor(isSelected4 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected4 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                            
                            // Button 5
                            Button(action: {
                                isSelected5 = !isSelected5
                            }) {
                                VStack {
                                    Image("sf5")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Futuriste")
                                        .foregroundColor(isSelected5 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected5 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                            
                            // Button 6
                            Button(action: {
                                isSelected6 = !isSelected6
                            }) {
                                VStack {
                                    Image("jeune2")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Jeunes")
                                        .foregroundColor(isSelected6 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected6 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                        }
                        HStack {
                            // Button 7
                            Button(action: {
                                isSelected7 = !isSelected7
                            }) {
                                VStack {
                                    Image("aventure1")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Aventure")
                                        .foregroundColor(isSelected7 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected7 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                            
                            // Button 8
                            Button(action: {
                                isSelected8 = !isSelected8
                            }) {
                                VStack {
                                    Image("laughing")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Humour")
                                        .foregroundColor(isSelected8 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected8 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                            
                            // Button 9
                            Button(action: {
                                isSelected9 = !isSelected9
                            }) {
                                VStack {
                                    Image("romance1")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Romance")
                                        .foregroundColor(isSelected9 ? .white : .black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(isSelected9 ? Color("secondaryColor") : baseBackground)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color("secondaryColor")))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding(.bottom, 70)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}




struct userProfile_Previews: PreviewProvider {
    static var previews: some View {
        userProfile(username: .constant("John Doe"))
    }
}

