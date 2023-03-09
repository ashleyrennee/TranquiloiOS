//
//  Journal.swift
//  Tranquilo
//
//  Created by Ashley Acevedo on 3/9/23.
//

import Foundation
import ParseSwift

struct Journal : ParseObject{
    var originalData: Data?
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseSwift.ParseACL?

}
