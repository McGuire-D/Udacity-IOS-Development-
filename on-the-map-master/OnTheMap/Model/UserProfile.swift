//
//  UserProfile.swift
//  OnTheMap
//
//  Created by Dustin Mcguire on 7/27/2020.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation

struct UserProfile: Codable {
    let firstName: String
    let lastName: String
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case nickname
    }
 
}
