import SwiftUI

struct Landing_2: View {
    
    var body: some View {
        ZStack {
            Color("mainColor")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("1. Remplis ton")
                        .fontWeight(.bold)
                        .font(.custom("Hey Comic", size: 23))
                    Image("user")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("et profite des")
                        .font(.custom("Hey Comic", size: 23))
                }
                .padding(.bottom, -20)
                Text("recommandations ...")
                    .font(.custom("Hey Comic", size: 23))
                    .padding(.top, 30)
            }
        }
    }
}

struct Landing_2_Previews: PreviewProvider {
    static var previews: some View {
        Landing_2()
    }
}

