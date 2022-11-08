import SwiftUI

struct Landing_3: View {
    var body: some View {
        ZStack {
            Color("mainColor")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("2. Choisis Rapide")
                        .font(.custom("Hey Comic", size: 23))
                    Image("Quick")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("ou ")
                        .font(.custom("Hey Comic", size: 23))
                }.padding(.bottom, -20)
                HStack {
                    Image("Custom")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("Personnalisé")
                        .font(.custom("Hey Comic", size: 23))
                }.padding(.top, 30)
            }
        }
    }
}


struct Landing_3_Previews: PreviewProvider {
    static var previews: some View {
        Landing_3()
    }
}
