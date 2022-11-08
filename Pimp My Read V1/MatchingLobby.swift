import SwiftUI

struct MatchingLobby: View {
    @State private var translation: Bool = false
    @State private var toto = false
    @State private var lala = false
    @State private var position: CGFloat = 0
    
    var body: some View {
        // NAV + GEO
        NavigationView {
            GeometryReader { geometry in
                // STACK GLOBAL
                VStack(spacing: 0) {
                    // DEBUT STACK BLEU
                    ZStack {
                        Rectangle()
                            .fill(Color("mainColor"))
                        VStack {
                            
                           Image("Quick")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .font(Font.custom("OpenMoji-Color", size: 120))
                            Text("Rapide")
                                .font(.custom("Hey Comic", size: 23))
                                .padding(.bottom, 25)
                            Image("arrow-right-1")
                                .resizable()
                                .frame(width: 80, height: 50)
                                .font(Font.custom("OpenMoji-Color", size: 40))
                        }
                    }
                    .gesture(
                        DragGesture(minimumDistance: 200)
                            .onChanged { value in
                                self.translation = true
                                if value.translation.width >= 200 {
                                    toto = true
                                }
                            }
                            .onEnded { value in
                                self.translation = false
                                toto = false
                            }
                    )
                    if toto == true {
                        NavigationLink(destination: MatchingCards(), isActive: $toto) {
                            EmptyView()
                        }
                    }
                    // FIN STACK purple
                    // DEBUT STACK blue
                    ZStack {
                        Rectangle()
                            .fill(Color("mainBlue"))
                        VStack {
                            Image("Custom")
                                 .resizable()
                                 .frame(width: 130, height: 130)
                                .font(Font.custom("OpenMoji-Color", size: 120))
                            Text("Personnalisé")
                                .font(.custom("Hey Comic", size: 23))
                                .padding(.bottom, 25)
                            Image("arrow-left-1")
                                .resizable()
                                .frame(width: 80, height: 50)
                                .font(Font.custom("OpenMoji-Color", size: 40))
                                .padding(.bottom, 40)
                        }
                    }
                    .gesture(
                        DragGesture(minimumDistance: 200)
                            .onChanged { value in
                                self.translation = true
                                if value.translation.width <= -100 {
                                    lala = true
                                }
                            }
                            .onEnded { value in
                                self.translation = false
                                lala = false
                            }
                    )
                    if lala == true {
                        NavigationLink(destination:MatchingCards2()
                                       , isActive: $lala) {
                            EmptyView()
                        }
                    }
                    // FIN STACK blue
                }
                .ignoresSafeArea()
                // FIN DU VSTACK GLOBAL
                
            }
        }
    }
}

struct ultimate_Previews: PreviewProvider {
    static var previews: some View {
        MatchingLobby()
    }
}
