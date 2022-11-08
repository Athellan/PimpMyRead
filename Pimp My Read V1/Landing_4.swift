import SwiftUI

struct Landing_4: View {
    @Binding var finish: Int
    var body: some View {
        ZStack {
            Color("mainColor")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("3. Passe")
                        .font(.custom("Hey Comic", size: 23))
                    Image("swipe-left-1")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("ou Valide")
                        .font(.custom("Hey Comic", size: 23))
                    Image("swipe-right-1")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("pour")
                        .font(.custom("Hey Comic", size: 23))
                }
                .padding(.bottom, -20)
                HStack {
                    Text("ajouter à ta bibliothèque")
                        .font(.custom("Hey Comic", size: 23))
                    Image("books")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                }.padding(.top, 30)
            }
        }
        .onTapGesture {
            finish = 2
        }
    }
}

struct Landing_4_Previews: PreviewProvider {
    static var previews: some View {
        Landing_4(finish: .constant(0))
    }
}


