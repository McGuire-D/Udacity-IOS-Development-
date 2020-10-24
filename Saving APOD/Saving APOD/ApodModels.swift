//
//  ApodModels.swift
//  Saving APOD
//
//  Created by Dustin McGuire on 10/24/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import UIKit


struct PhotoInfoModel: Codable {
    var date: String
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    enum CodingKeys: String, CodingKey {
        case date
        case title
        case description  = "explanation"
        case url
        case copyright
    }
}
