import SwiftUI

struct ProfileRow: View {
    var owner: Owner
    
    var body: some View {
        HStack {
            owner.photo
                .resizable()
                .frame(width: 75.0, height: 75.0)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .offset(x: -5)
            VStack(alignment: .leading) {
                Text(owner.name)
                    .font(.title2)
                Text(owner.surname)
                    .font(.subheadline)
            }
            Spacer()
            HStack {
                Text("\(owner.rate)")
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let owner = ModelData().owner
    return Group {
        ProfileRow(owner: owner[0])
        ProfileRow(owner: owner[1])
    }
}
