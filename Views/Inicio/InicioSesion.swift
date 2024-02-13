import SwiftUI

struct InicioSesion: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @ObservedObject var viewModel: Login = Login()
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack{
                Text("LogIn")
                    .font(.title)
                TextField(
                    "email",
                    text: $email
                )
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.top, 20)
                
                Divider()
                
                SecureField(
                    "password",
                    text: $password
                )
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.top, 20)
                
                Divider()
            }
            
            Spacer()
            
            Button(
                action: viewModel.login,
                label: {
                    Text("Login")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
        }
        .padding(30)
    }
}

#Preview {
    InicioSesion()
}
