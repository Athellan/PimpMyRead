import SwiftUI

struct BooksDetailsView: View {
    
    @State private var showingModal = false
    
    var book: Books
    
    var body: some View {
        ZStack {
            Color("mainColor")
                .ignoresSafeArea()
            ScrollView {
                VStack(){
                    Text(book.title)
                        .padding(.bottom, 10)
                        .font(.custom("Hey Comic", size: 35))
                    HStack {
                        if book.categories.count == 3 {
                            Text("\(book.categories[0])")
                                .frame( height: 10)
                                .foregroundColor(.red)
                                .padding()
                                .background(Color.red.opacity(0.3))
                                .cornerRadius(15)
                                .font(.custom("Hey Comic", size: 15))
                            Text("\(book.categories[1])")
                                .frame( height: 10)
                                .foregroundColor(.blue)
                                .padding()
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(15)
                                .font(.custom("Hey Comic", size: 15))
                            Text("\(book.categories[2])")
                                .frame( height: 10)
                                .foregroundColor(.green)
                                .padding()
                                .background(Color.green.opacity(0.3))
                                .cornerRadius(15)
                                .font(.custom("Hey Comic", size: 15))
                        }
                        else if book.categories.count == 2 {
                            Text("\(book.categories[0])")
                                .frame(height: 10)
                                .foregroundColor(.red)
                                .padding()
                                .background(Color.red.opacity(0.3))
                                .cornerRadius(15)
                            
                            Text("\(book.categories[1])")
                                .frame( height: 10)
                                .foregroundColor(.blue)
                                .padding()
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(15)
                        }
                        else {
                            Text("\(book.categories[0])")
                                .frame(height: 10)
                                .foregroundColor(.red)
                                .padding()
                                .background(Color.red.opacity(0.3))
                                .cornerRadius(15)
                        }
                    }
                    .padding()
                    Image(book.image)
                        .resizable()
                        .frame(width: 300, height: 420)
                        .cornerRadius(20)
                        .shadow(radius: 2)
                        .padding(.bottom, 15)
                    VStack(alignment: .leading) {
                        Text("Synopsis")
                            .font(.custom("Hey Comic", size: 23))
                            .padding(5)
                        Text(book.description)
                            .padding(5)
                            .font(.custom("Hey Comic", size: 15))
                        Text("Pourquoi c'est top ?")
                            .font(.custom("Hey Comic", size: 23))
                            .padding(5)
                            .font(.custom("Hey Comic", size: 15))
                        VStack(alignment: .leading) {
                            Text("\(Image(systemName: "plus.circle")) \(book.arguments[0])")
                                .font(.custom("Hey Comic", size: 15))
                            Text("\(Image(systemName: "plus.circle")) \(book.arguments[1])")
                                .font(.custom("Hey Comic", size: 15))
                            Text("\(Image(systemName: "plus.circle")) \(book.arguments[2])")
                                .font(.custom("Hey Comic", size: 15))
                        }
                        .padding(10)
                    }
                    .frame(width: 350, alignment: .leading)
                    Button(action: {
                        self.showingModal = true
                    }) {
                        HStack() {
                            Image("shopping-cart")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("Je le veux !")
                                .padding()
                                .font(.custom("Hey Comic", size: 20))
                                .foregroundColor(Color("secondaryColor"))
                        }
                        .frame(width: 220, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(Color("secondaryColor")))
                    }
                    .padding()
                    Spacer()
                }
            }
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.vertical)
                    VStack(spacing: 35) {
                        Text("Où se le procurer ?")
                            .bold().padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("secondaryColor"))
                            .foregroundColor(Color.white)
                        HStack{
                            VStack{
                                Image("amazon")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding(10)
                                Link("Amazon", destination: URL(string: "https://www.amazon.fr")!)
                                    .environment(\.openURL, OpenURLAction { url in
                                        print("Open \(url)")
                                        return .handled
                                    })
                                    .foregroundColor(Color("secondaryColor"))
                            }
                            VStack{
                                Image("fnac")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding(10)
                                Link("Fnac", destination: URL(string: "https://www.fnac.com")!)
                                    .environment(\.openURL, OpenURLAction { url in
                                        print("Open \(url)")
                                        return .handled
                                    })
                                    .foregroundColor(Color("secondaryColor"))
                            }
                            VStack{
                                Image("izneo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding(10)
                                Link("Izneo", destination: URL(string: "https://www.izneo.com/fr")!)
                                    .environment(\.openURL, OpenURLAction { url in
                                        print("Open \(url)")
                                        return .handled
                                    })
                                    .foregroundColor(Color("secondaryColor"))
                            }
                        }
                        Button(action: {
                            self.showingModal = false
                        }) {
                            Text("Fermer")
                                .foregroundColor(Color("secondaryColor")).bold()
                        }
                        .padding()
                    }
                    .frame(width: 300, height: 280)
                    .background(Color.white)
                    .cornerRadius(20).shadow(radius: 20)
                }
            }
        }
    }
}

struct BooksDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BooksDetailsView(book: Books(title: "Naruto", image: "Naruto", categories: ["iooih", "eheth", "rgegj"], style: "test", description: "", writer: "", IsChosen: false, arguments: ["gfgj", "", "ergz"], categoryType: [.Humour, .Aventure, .Action]))
    }
}
