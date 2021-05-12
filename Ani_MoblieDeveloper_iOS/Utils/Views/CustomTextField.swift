//
//  CustomTextField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 10/05/21.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text : String
    let placeholder : Text
    let imageName:String
    var body: some View {
        
        //Custom TextField for Login View
        ZStack(alignment:.leading) {
            if text.isEmpty{
                placeholder.foregroundColor(Color(.init(white: 0.5, alpha: 0.87)))
                    .padding(.leading,50)
            }
            HStack(spacing:16){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.gray)
                    .padding(.leading,16)
                TextField("",text:$text)
            }
            
        }
        
    }
    
}

