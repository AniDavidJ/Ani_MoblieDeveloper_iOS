//
//  ContentView.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 13/05/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authviewModel :AuthViewModel

    
    var body: some View {
         if authviewModel.userSession != nil {
         }
                    else{
                        LoginView()
        
                    }
    
}
}
