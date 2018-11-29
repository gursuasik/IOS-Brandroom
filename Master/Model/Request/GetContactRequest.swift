//
//  GetContactRequest.swift
//  Master
//
//  Created by Gürsu Aşık on 11.09.2018.
//  Copyright © 2018 RND. All rights reserved.
//

import Foundation
import Alamofire

class GetContactRequest {
    var endPoint = "/getcontact"
    var method: HTTPMethod = .get
    
    var token_type: String
    var authorization: String
    
    init(token_type: String, authorization: String) {
        self.token_type = token_type
        self.authorization = authorization
    }
    
    func getURL() -> String {
        return Config().URL + Config().API + Config().CONTACT + endPoint
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
        
        return arr
    }
}
