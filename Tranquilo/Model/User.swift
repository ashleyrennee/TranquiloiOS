//
//  User.swift
//  Tranquilo
//
//  Created by Ashley Acevedo on 3/9/23.
//

import Foundation
import ParseSwift


struct User : ParseUser{
    var originalData: Data?
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseSwift.ParseACL?
    
    var username: String?
    var email: String?
    var emailVerified: Bool?
    var password: String?
    var authData: [String : [String : String]?]?
    
}
