//
//  CommentTweetView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI

struct CommentTweetView: View {
    @State var reply = ""
 //   @EnvironmentObject var viewModel : uploadTweetmodels
    @EnvironmentObject var viewModel : UploadTweetViewModel

    var body: some View {
        
        HStack{
          //  if let user = AuthViewModel.shared.user{
                Image("Avatar")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 30, height: 30)
                    .cornerRadius(30/2)
         //   }
            
           
            TweetTextField(text: $reply,onCommit:{
                          // viewModel.uploadTweet(caption: reply)
                            print("got it")})
                .padding()
                .background(Color(.init(white: 1, alpha: 0.5)))
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 0.5))
            
        }.padding()
        
    }
}

//struct TweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentTweetView()
//    }
//}
