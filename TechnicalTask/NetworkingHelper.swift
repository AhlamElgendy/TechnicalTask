//
//  Helper.swift
//  TechnicalTask
//
//  Created by ahlam on 12/31/17.
//  Copyright © 2017 ahlam. All rights reserved.
//

import Foundation
import Alamofire

class NetworkingHelper{
    
     let baseUrl = "https://api.nytimes.com/svc/search/v2/articlesearch.json";
    
    // With Alamofire
    func getStories(name:String,handler:@escaping (_ result: [[String: Any]]) -> Void) {
        Alamofire.request(
            URL(string: "http://localhost:5984/rooms/_all_docs")!,
            method: .get,
            parameters: ["include_docs": "true"])
            .validate()
            .responseJSON { (response) -> Void in
                guard response.result.isSuccess else {
                    print("Error while fetching remote rooms: \(response.result.error)")
                    handler(nil)
                    return
                }
                
                guard let value = response.result.value as? [String: Any],
                    let rows = value["rows"] as? [[String: Any]] else {
                        print("Malformed data received from fetchAllRooms service")
                        handler(nil)
                        return
                }
                
//                let rooms = rows.flatMap({ (roomDict) -> String? in
//                    return String(jsonData: roomDict)
//                })
                
                handler(rows)
        }
    }
    
}
