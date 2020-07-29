//
//  LoginResponse.swift
//  OnTheMap
//
//  Created by Dustin Mcguire on 7/27/2020.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation

struct LoginResponse: Codable {
    let account: Account
    let session: Session
}

struct Account: Codable {
    let registered: Bool
    let key: String
}


