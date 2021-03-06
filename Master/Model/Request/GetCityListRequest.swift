//
//  City.swift
//  Master
//
//  Created by Gürsu Aşık on 26.07.2018.
//  Copyright © 2018 RND. All rights reserved.
//

import UIKit
import Alamofire

class GetCityListRequest {
    var endPoint = "/GetCityList"
    var method: HTTPMethod = .post
    
    var token_type: String
    var authorization: String
    
    var countryId: String
    
    init(token_type: String, authorization: String, countryId: String) {
        self.token_type = token_type
        self.authorization = authorization
        
        self.countryId = countryId

    }
    
    func getURL() -> String {
        return Config().URL + Config().API + Config().ADDRESS + endPoint
    }
    
    func getHeaders() -> HTTPHeaders? {
        let headers: HTTPHeaders = [
            "Authorization": token_type + " " + authorization,
            "Accept": "application/json"
        ]
        
        return headers
    }
    
    func getParameters() -> [String: Any] {
        var arr = [String: Any]()

        arr[RequestApi.CountryId] = countryId
        
        return arr
    }
}
