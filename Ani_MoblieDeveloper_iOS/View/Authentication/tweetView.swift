//
//  tweetView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct tweetView: View {
    @EnvironmentObject var authviewModel :AuthViewModel
    @ObservedObject var feedviewmodel : FeedViewModel
    @ObservedObject var uploadviewModel :UploadTweetViewModel
    
    var body: some View {
        Group{
            if authviewModel.userSession != nil {
                NavigationView{
                    ZStack(alignment: .leading, content: {
                        ScrollView{
                            VStack(alignment: .leading){
                                ForEach(uploadviewModel.tweets){ tweet in
                                    TweetCell(tweet: tweet)
                                }.padding(.top,-20)
                            }
                        }
                    })
                    
                    .navigationBarItems(leading: Button(action: {
                        authviewModel.SignOut()
                        
                    }, label: {
                        Image(systemName: "arrow.left").foregroundColor(.black)
                            .scaleEffect(0.83)
                            .font(Font.title.weight(.semibold))
                        
                        
                    }),trailing: LogoView()
                        .padding(120.0))
                    
                }
                CommentTweetView(viewModel: UploadTweetViewModel())
                
            }
            else{
                LoginView()
                
            }
        }
        
    }
}

//struct tweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        tweetView()
//    }
//}
