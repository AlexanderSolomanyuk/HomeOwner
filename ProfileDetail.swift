import SwiftUI

struct ProfileDetail: View {
    @Environment(ModelData.self) var modelData
    var owner: Owner
    
    var body: some View {
        ScrollView{
            CircleImage(image: owner.photo)
            
            VStack(alignment: .leading){
                Text(owner.name)
                    .font(.title)
                Text(owner.surname)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(owner.name) \(owner.surname)")
                    .font(.title2)
                
                Spacer()
                
                Text(owner.descripcion)
            }
            .padding()
        }
        .navigationTitle(owner.surname)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return ProfileDetail(owner: modelData.owner[0])
        .environment(modelData)
}
