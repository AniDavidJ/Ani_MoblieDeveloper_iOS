//
//  Ani_MoblieDeveloper_iOSApp.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 10/05/21.
//

import SwiftUI
import Firebase

@main
struct Ani_MoblieDeveloper_iOSApp: App {
    init()
    {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            tweetView(feedviewmodel: FeedViewModel.init()).environmentObject(AuthViewModel.shared)

        }
    }
}
