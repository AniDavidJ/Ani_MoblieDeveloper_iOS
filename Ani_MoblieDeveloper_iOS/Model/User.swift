//
//  User.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import Foundation

struct User: Identifiable {
    let id: String
    let username  : String
    let email : String
    let profileImageUrl : String
    
    init(dictionary :  [String:Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["name"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        
    }
}
