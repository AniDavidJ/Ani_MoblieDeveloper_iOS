//
//  CustomRegistrationField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct CustomRegistrationField: View {
    @Binding var text : String
    let placeholder : Text
   // let imageName:String
    var body: some View {
        

        ZStack(alignment:.leading) {
            if text.isEmpty{
                placeholder.foregroundColor(Color(.init(white: 0.5, alpha: 0.87)))
                    .padding(.leading,20)
            }
            TextField("",text:$text)
        
        }
     
    }
    
}
