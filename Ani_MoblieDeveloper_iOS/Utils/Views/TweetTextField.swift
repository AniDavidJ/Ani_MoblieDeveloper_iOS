//
//  TweetTextField.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI

struct TweetTextField: View {
    //@Binding var isPresented : Bool
    @Binding var text : String
    let placeholder : Text
    @ObservedObject var viewModel : uploadTweetmodels
    
    
    var body: some View {
        
        
        ZStack(alignment:.leading) {
            if text.isEmpty{
                placeholder.foregroundColor(Color(.init(white: 0.5, alpha: 0.87)))
                    .padding(.leading,20)
            }

            TextField("", text: $text, onEditingChanged: { (changed) in
                      }) {
                viewModel.uploadTweet(caption: text)
                text = ""
                      }
                     
               
                  }.overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white, lineWidth: 0.5))
        
        }
     
    }
    


