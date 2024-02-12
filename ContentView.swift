import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .owner
    
    enum Tab {
        case owner
        case renter
    }
    
    var body: some View {
        TabView(selection: $selection) {
            OwnerList()
                .tabItem {
                    Label("Owner", systemImage: "star")
                }
                .tag(Tab.owner)
                .padding(-7)
            RenterList()
                .tabItem {
                    Label("Renter", systemImage: "star")
                }
                .tag(Tab.renter)
                .padding(-7)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
