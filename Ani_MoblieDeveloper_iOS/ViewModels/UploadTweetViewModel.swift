//
//  UploadTweetViewModel.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject{
//    @Published var user : User
//    @Published var userTweets = [Tweet]()

    init(isPresented : Binding<Bool>){
//        self.user = user
//    //    fetchUserTweets()
        self._isPresented = isPresented
   }
    @Binding var isPresented :Bool
    func uploadTweet(caption: String)
    {
        guard let user = AuthViewModel.shared.user else {return}
        let docRef = COLLECTION_TWEETS.document()
        let data:[String:Any] = ["uid": user.id , "caption":caption , "name" : user.username, "timestamp": Date(), "id" : docRef.documentID]
        print(user)
        print(docRef)
        docRef.setData(data) { _ in
            print("DEBUG: Succesfully uploaded tweet...")
            self.isPresented = false
        }
    }
//    func fetchUserTweets(){
//        guard let user = AuthViewModel.shared.user else {return}
//        COLLECTION_TWEETS.whereField("uid", isEqualTo: user.id).getDocuments { snapshot , _ in
//            guard let document = snapshot?.documents else {return}
//
//            self.userTweets = document.map({ Tweet( dictionary: $0.data())})
//        }
//
//    }
//    func tweets(forFilter filter : TweetFilterOptions)->[Tweet]{
//        switch filter {
//        case .tweets : return userTweets
//
//
//        }
//    }
}
