//
//  LoginView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 10/05/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    
                    LogoView()
                    
                    Text("Sign in to your Account")
                        .padding(.bottom,20)
                        .font(.system(size: 17,weight:.bold))
                    VStack(spacing: 20){
                        
                        CustomTextField(text: $email, placeholder: Text("Email"),imageName: "envelope")
                            
                            .padding()
                            .background(Color(.init(white: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.gray, lineWidth: 0.5))
                        
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.gray, lineWidth: 0.5))
                        
                    }
                    .font(.system(size: 13,weight:.regular))
                    .padding(.horizontal,20)
                    
                    //Button Action for Sign In
                    Button(action: {
                        
                        viewModel.login(withEmail: email, password: password)
                        
                    }, label: {
                        Text("Sign in")
                            .font(Font.custom("Hellix-SemiBold", size: 14))
                            .foregroundColor(.white)
                            .frame(width: 156, height: 47)
                            .background(
                                LinearGradient(gradient: Gradient(colors:[ Color(red: 0.235, green: 0.694, blue: 0.529), Color(red: 0.435, green: 0.804, blue: 0.839)]), startPoint: .leading, endPoint: .trailing))
                            .clipShape(Capsule())
                            .padding(.top,70)
                    })
                    
                    Spacer()
                   NavigationLink(
                    destination: RegistrationView().navigationBarBackButtonHidden(true),
                    label: {
                        HStack{
                            Text("Don’t have a Teamio account yet?")
                                .font(Font.custom("Hellix-Regular", size: 14))
                            Text("Sign up")
                                .font(.system(size: 14,weight:.semibold))
                            
                        }
                        .foregroundColor(.black)
                        .padding(.bottom,150)
                        .padding(.top,20)
                        
                    })
                }
            }
        }
        .ignoresSafeArea()
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
