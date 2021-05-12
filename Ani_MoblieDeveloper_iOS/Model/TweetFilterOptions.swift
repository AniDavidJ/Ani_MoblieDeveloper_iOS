//
//  TweetFilterOptions.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 12/05/21.
//

import SwiftUI

enum TweetFilterOptions : Int,CaseIterable {
    case tweets
    
    var title: String{
        switch self {
        case .tweets: return "Tweets"
        
        }
    }
}
