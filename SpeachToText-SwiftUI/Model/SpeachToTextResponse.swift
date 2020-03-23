//
//  SpeachToTextResponse.swift
//  SpeachToText-SwiftUI
//
//  Created by Heshan Yodagama on 3/23/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import Foundation

//struct - usually used when we need immutable object
//Codable - its a protocol which helps to map JOSON to swift object
struct SpeachToTextResponse: Codable {
    let message: String
}
