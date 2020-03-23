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
    
    func fetchData(text: String){
        let task = URLSession.shared.dataTask(with: EndPoints.SpeachToText("Spech text").url) { (data, response, error) in
            if error == nil{
                let decorder = JSONDecoder()
                //to check wether the data is available ( normally error is nill , then there should be data)
                if let safeData = data{
                    do{
                    let resualt = try decorder.decode(SpeachToTextResponse.self, from: safeData)
                        DispatchQueue.main.async {
                            // assign to Published var
                        }
                    }catch{
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
}


