import SwiftUI

struct LogIn: View {
    @Binding var username: String
    @Binding var showDetail: Int
    @State private var showingAlert = false
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("mainColor"))
            VStack {
                Image("imgTest")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .padding(30)
                    .padding(.top, 55)
                Text("Quel est ton nom d'utilisateur ?")
                    .font(.custom("Hey Comic", size: 17))
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300, height: 45)
                    .cornerRadius(5.0)
                TextField("Mon nom est ..", text: $username)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(5.0)
                    .padding()
                
                Button("Valider") {
                    showingAlert = true
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color("secondaryColor"))
                .cornerRadius(15.0)
                .alert("Bonjour \(username)", isPresented: $showingAlert) {
                    Button("Merci", role: .cancel) {
                        self.showDetail = 2
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}


struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn(username: .constant(""), showDetail: .constant(3))
    }
}
