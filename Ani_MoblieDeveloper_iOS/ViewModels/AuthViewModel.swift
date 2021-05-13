//
//  AuthViewModel.swift
//  Ani_MoblieDeveloper_iOS
//
//  Created by ani david on 11/05/21.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userTweets = [Tweet]()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating = false
    @Published var error:Error?
    @Published var user:User?
    
    static let shared = AuthViewModel()
    
    init(){
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    func login(withEmail email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
            if let error = error {
                print("DEBUG:Error \(error.localizedDescription)")
                return
            }
            self.userSession = result?.user
            self.fetchUser()
        }
    }
    
    func registerUser(username:String,email:String,password:String,confirmpassword:String){
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("DEBUG:Error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            
            let data = ["name": username,
                        "email": email,
                        "uid": user.uid ]
            Firestore.firestore().collection("users").document(user.uid).setData(data){ _ in
                self.userSession = user
                self.fetchUser()
            }
        }
    }
    func SignOut() {
        userSession = nil
        user = nil
        try? Auth.auth().signOut()
    }
    func fetchUser()  {
        guard let uid = userSession?.uid else { return }
        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
            guard let data = snapshot?.data() else {return}
            self.user = User(dictionary: data)
        }
    }
    
}
