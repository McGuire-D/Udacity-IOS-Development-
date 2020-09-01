//
//  Pin+Extension.swift
//  Virtual Tourist
//
//  Created by Dustin McGuire on 9/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import CoreData

extension Pin {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
