//
//  NetworkStoriesHelper.swift
//  TechnicalTask
//
//  Created by ahlam on 12/31/17.
//  Copyright © 2017 ahlam. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class NetworkStoriesHelper{
    
    static var baseURL = "https://api.nytimes.com/svc/topstories/v2/";
    
    static func getDataFromSection(name:String,handler:@escaping (_ resultList:StoryModel) -> Void) {
        let URL = baseURL+name+".json?api-key=6389ab6b2cb54e399a02899063009b3c"
        print(URL)
        Alamofire.request(URL).responseObject { (response: DataResponse<StoryModel>) in
            
            let forecastArray = response.result.value
            
            handler(forecastArray!)
    }
    }
}
