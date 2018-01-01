//
//  StoryModel.swift
//  TechnicalTask
//
//  Created by ahlam on 12/31/17.
//  Copyright © 2017 ahlam. All rights reserved.
//

import Foundation
import ObjectMapper
class StoryModel:Mappable {
    var results:[StoryModelResult]?
    
    required init(map: Map) {
    
    }
    
    func mapping(map: Map) {
        results <- map["results"]
    }
    
    class StoryModelResult:Mappable{
    var title:String?
    var published_date:String?
    var multimedia:[Multimedia]?
    
    required init(map:Map) {

    }
    func 	mapping(map: Map) {
        title <- map["title"]
        published_date <- map["published_date"]
        multimedia <- map["multimedia"]
    }
        
    }
    
    class Multimedia :Mappable{
        var url:String?
        
        required init(map:Map) {
            
        }
        
        func mapping(map: Map) {
            url <- map["url"]
        }
    }
}
