//
//  WebMotorsStructs.swift
//  WebMotors
//
//  Created by Marcos V. S. Matsuda on 19/01/19.
//  Copyright © 2019 Marcos V. S. Matsuda. All rights reserved.
//

import Foundation

struct Vehicle: Codable {
    
    let ID: Int
    let Make: String
    let Model: String
    let Version: String
    let Image: String
    let KM: Int
    let Price: String
    let YearModel: Int
    let YearFab: Int
    let Color: String
    
    
    
}
