import SwiftUI

struct NavigationUI: View {
    @State private var selectedSection = 0
    @State private var start = false
    @State private var finishedOnboarding = false
    @State private var chosenName = ""
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        if selectedSection == 1 {
            TabView() {
                Landing_2()
                Landing_3()
                Landing_4(finish: $selectedSection)
                LogIn(username: $chosenName, showDetail: $selectedSection)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .ignoresSafeArea()
        } else if selectedSection == 2 {
            HostingTabBar(username: $chosenName)
        }
        else {
            Landing_1(start: $selectedSection)
        }
    }
}


struct NavigationUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUI()
    }
}
