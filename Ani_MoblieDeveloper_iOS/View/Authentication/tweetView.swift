//
//  tweetView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import SwiftUI

struct tweetView: View {
    @EnvironmentObject var viewModel :AuthViewModel
    
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                NavigationView{
                ZStack(alignment: .bottomTrailing, content: {
                    ScrollView{
                        VStack{
                            ForEach(0..<25){ _ in
                                TweetCell()
                              
                            }
                        }
                    }
                })
                .navigationBarItems(leading: Button(action: { viewModel.SignOut()}, label: {
                    Image(systemName: "arrow.left").foregroundColor(.black)
                        .scaleEffect(0.83)
                        .font(Font.title.weight(.semibold))


                }),trailing: LogoView()
                                        .padding(120.0))
                 
                }
                CommentTweetView()

            }
            else{
                LoginView()

            }
        }
   
    }
}
//
//struct tweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        tweetView()
//    }
//}
