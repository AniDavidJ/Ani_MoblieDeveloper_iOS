//
//  CustomSecureRegistrationField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct CustomSecureRegistrationField: View {
    @Binding var text : String
    let placeholder : Text
    var body: some View {
        
        //Custion TextField for Password Login
        ZStack(alignment:.leading) {
            if text.isEmpty{
                placeholder.foregroundColor(Color(.init(white: 0.5, alpha: 0.87)))
                    .padding(.leading,20)
            }
            SecureField("",text:$text)
            
        }
        
    }
    
}
