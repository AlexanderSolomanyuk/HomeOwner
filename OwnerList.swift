import SwiftUI

struct OwnerList: View {
    @Environment(ModelData.self) var modelData
    @State private var showOwnersOnly = false
    
    var filteredOwners: [Owner]{
        modelData.owner.filter{ owner in
            (owner.isOwner)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List {
                ForEach(filteredOwners) { owner in
                    NavigationLink{
                        ProfileDetail(owner: owner)
                    } label: {
                        ProfileRow(owner: owner)
                    }
                }
            }
            .animation(.default, value: filteredOwners)
            .navigationTitle("Owners")
        }detail: {
            Text("Select an Owner")
        }
    }
}

#Preview {
    OwnerList()
        .environment(ModelData())
}
