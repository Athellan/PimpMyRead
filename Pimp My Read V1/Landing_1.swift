import SwiftUI

struct Landing_1: View {
    @Binding var start:Int
    var body: some View {
        NavigationView {
            ZStack {
                Color("mainColor")
                    .ignoresSafeArea()
                VStack {
                    Image("Pimp My read (10)")
                        .padding(.bottom, 40)
                    VStack {
                        Button(action: {
                            start = 1
                        }) {
                            ZStack {
                                Image("start")
                                    .resizable()
                                    .frame(width: 150, height: 130)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct Landing_1_Previews: PreviewProvider {
    static var previews: some View {
        Landing_1(start: .constant(0))
    }
}
