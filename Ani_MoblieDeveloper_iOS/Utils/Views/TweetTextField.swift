//
//  TweetTextField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI

struct TweetTextField: View {
    @Binding var text : String
    var onCommit: () -> () = {}
    @State private var isEditing = false
    
    var body: some View {
        
        
        ZStack(alignment:.leading) {
            if text.isEmpty{
                
            }
            
            TextField("Tweet your reply", text: $text, onCommit: didPressReturn)
        }
    }
    func didPressReturn() {
        print("did press return")
        
        self.onCommit()
        text = "" 
    }
}



