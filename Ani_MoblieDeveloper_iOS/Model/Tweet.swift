//
//  Tweet.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import Firebase

struct Tweet: Identifiable {
    let id : String
    let username: String
    let caption :String
    let uid :String
    let timestamp : Timestamp
    
    init(dictionary:[String:Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        self.id = dictionary["id"] as? String ?? ""
      self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
}
