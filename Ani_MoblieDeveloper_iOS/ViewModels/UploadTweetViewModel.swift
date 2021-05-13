//
//  UploadTweetViewModel.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject{
    @Published var tweets = [Tweet]()
    
    init() {
        fetchUserTweets()
    }
    static let fetchUsershared = UploadTweetViewModel()
    func uploadTweet(caption: String)
    {
        guard let user = AuthViewModel.shared.user else {return}
        let docRef = COLLECTION_TWEETS.document()
        let data:[String:Any] = ["uid": user.id , "caption":caption , "name" : user.username, "timestamp": Timestamp(date: Date()), "id" : docRef.documentID,"email": user.email]
        docRef.setData(data) { _ in
            
            self.fetchUserTweets()
        }
    }
    func fetchUserTweets(){
        COLLECTION_TWEETS.getDocuments{ snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            self.tweets = documents.map({Tweet(dictionary: $0.data())})
            
        }
    }
    
}
