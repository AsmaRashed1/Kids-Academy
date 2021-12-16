//
//  User.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 05/05/1443 AH.
//

import Foundation
import UIKit

class User {
    
    var userName: String?
    var email: String?

}
extension User {
    
    static func getUser(dict: [String: Any]) -> User {
       
        let user = User()
        
        user.userName = dict["userName"] as? String
        user.email = dict["email"] as? String
       
        return user
    }
    static func CreateUser(userName:String,name:String,email:String) -> [String: Any] {
       
        let newUser = ["userName":userName,
                       "email" :email
                    ] as [String : Any]
        
        return newUser
    }
}

