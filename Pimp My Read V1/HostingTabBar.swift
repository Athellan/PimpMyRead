import SwiftUI

struct HostingTabBar: View {
    private enum Tab: Hashable {
        case explore
        case user
        case library
    }
    
    @Binding var username: String
    
    var body: some View {
        TabView() {
            userProfile(username: $username)
                .tabItem {
                    Text("Profil")
                    Image(systemName: "person.fill")
                }
            MatchingLobby()
                .tabItem {
                    Text("Recherche")
                    Image(systemName: "bolt.fill")
                }
            ListBooks()
                .tabItem {
                    Text("Bibliothèque")
                    Image(systemName: "books.vertical.fill")
                }
        }
        .accentColor(Color("secondaryColor"))
    }
}


struct HostingTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HostingTabBar(username: .constant(""))
    }
}
