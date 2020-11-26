//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let text: String
    let one: String
    let two: String
    
    init(title: String, choice1: String, choice2: String) {
        text = title
        one = choice1
        two = choice2
    }
}
