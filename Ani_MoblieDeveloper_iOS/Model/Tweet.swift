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
    let email :String
    let timestamp : Timestamp
    
    init(dictionary:[String:Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.username = dictionary["name"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        self.id = dictionary["id"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""

      self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
    
    var timestampString : String
    {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second,.minute,.hour,.day,.weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: timestamp.dateValue(),to: Date()) ?? ""
    }
    var detailedTimeStampString : String{
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a MM/dd/yyyy"
        return formatter.string(from: timestamp.dateValue())
    }
}
