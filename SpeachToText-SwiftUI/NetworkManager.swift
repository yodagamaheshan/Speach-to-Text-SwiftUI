//
//  NetworkManager.swift
//  SpeachToText-SwiftUI
//
//  Created by Heshan Yodagama on 3/23/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import Foundation

class NetworkManager{
   
    enum EndPoints{
        
       static let base = "http.xsxsxsxs.com/3"
        
        case SpeachToText(String)
        
        //computed property -they dont store values .. but return when we ask by preparing from another values
        var stringValue: String {
            switch self {
            case .SpeachToText(let text):
                return EndPoints.base + "/sdsd/wwdw&query=\(text)"
            }
        }
        
        var url: URL{
            return URL(string: self.stringValue)!
        }
    }
}


