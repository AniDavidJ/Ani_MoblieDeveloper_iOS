//
//  RegistrationView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 10/05/21.
//

import SwiftUI

struct RegistrationView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @Environment(\.presentationMode) var mode:Binding<PresentationMode>
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        ZStack{
            VStack{
                
                LogoView()
                    .padding(.top,100)
                Text("Create your Account")
                    .padding(.bottom,20)
                    .font(.system(size: 17,weight:.bold))
                VStack(spacing: 20){
                    
                    CustomRegistrationField(text: $name, placeholder: Text("Name"))
                        
                        .padding()
                        .background(Color(.init(white: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                    CustomRegistrationField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 0.5))
                    CustomSecureRegistrationField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 0.5))
                    CustomSecureRegistrationField(text: $confirmPassword, placeholder: Text("Confirm password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                    
                }
                .font(.system(size: 13,weight:.regular))
                .padding(.horizontal,20)
                Button(action: {
                    if self.isPasswordValid() {
                    viewModel.registerUser(username: name, email: email, password: password, confirmpassword: confirmPassword)
                    }
                    
                }, label: {
                    Text("Sign up")
                        .font(Font.custom("Hellix-SemiBold", size: 14))
                        .foregroundColor(.white)
                        .frame(width: 156, height: 47)
                        .background(
                            LinearGradient(gradient: Gradient(colors:[ Color(red: 0.235, green: 0.694, blue: 0.529), Color(red: 0.435, green: 0.804, blue: 0.839)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                        .padding(.top,70)
                })
                
                Spacer()
                Button(action: {mode.wrappedValue.dismiss()}, label: {
                    HStack{
                        Text("Already have account?")
                            .font(Font.custom("Hellix-Regular", size: 14))
                        Text("Sign in")
                            .font(.system(size: 14,weight:.semibold))
                        
                    }
                    .padding(.bottom,150)
                    .padding(.top,20)
                    .foregroundColor(.black)
                   
                })
            }
        }
        .ignoresSafeArea()
    }

private func isPasswordValid() -> Bool {
  
    
    if !password.isEmpty && password == confirmPassword && confirmPassword.count > 6{
        return true
    }
    
    return false
}
}
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
