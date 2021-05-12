//
//  CustomSecureField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct CustomSecureField: View{
    @Binding var text : String
    let placeholder : Text
    var body: some View {
        
        //Custion TextField for Password Login
        ZStack(alignment:.leading) {
            if text.isEmpty{
                placeholder.foregroundColor(Color(.init(white: 0.5, alpha: 0.87)))
                    .padding(.leading,50)
            }
            HStack(spacing:16){
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.gray)
                    .padding(.leading,16)
                SecureField("",text:$text)
            }
            
        }
        
    }
    
}

