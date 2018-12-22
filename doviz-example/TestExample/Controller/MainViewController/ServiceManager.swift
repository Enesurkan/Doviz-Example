//
//  ServiceManager.swift
//  TestExample
//
//  Created by Busra Filgir on 4.12.2018.
//  Copyright © 2018 EnesUrkan. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import SwiftyJSON

class ServiceManager: NSObject {

    var AlamofireManager : Alamofire.SessionManager?
    
    static var shared = ServiceManager()
    
    func initServiceManager() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 120
        self.AlamofireManager = Alamofire.SessionManager(configuration: configuration)
    }
    
    func getPrices(_ completionHandler:@escaping (PriceModel?) -> Void) {
        
        let headers : [String : String] = [
            "Content-Type" : "application/json"
        ]
        
        DataSource(.get, url: "latest" , headers: headers, responseType: PriceModel.self) { (responseData , error) -> Void in
            guard responseData != nil else {
                completionHandler(nil)
                return
            }
            completionHandler(responseData)
        }
    }

    
    func DataSource<T:Mappable>(_ requestType:HTTPMethod, url:String!, parameters: Parameters? = nil, headers : [String:String], isMainPage:Bool? = false ,responseType: T.Type?, SSLNeeded:Bool? = false , encoding:ParameterEncoding? = JSONEncoding.default , isAlertSilent:Bool? = false, printJSON:Bool? = false, attemptCount:Int? = 0,  completionHandler:((_ responseData:T? , _ error:NSError?) ->Void)?) {
        
        AlamofireManager!.request((BaseService.baseUrl + url), method: requestType, parameters: parameters , encoding:encoding!, headers:headers).validate().responseObject{ (response: DataResponse<T>) in
            if response.result.isFailure {
                if response.response?.statusCode != nil {
                    if response.response?.statusCode == 500  {
                        print("500 Error")
                    } else if (response.result.error as? AFError)?._code == NSURLErrorTimedOut {
                    } else {
                        if let data = response.data {
                            let responseJSON = try? JSON(data: data)
                        }
                        completionHandler!(nil , response.result.error as NSError?)
                    }
                }
            } else {
                if let data = response.result.value {
                    completionHandler!(data , nil)
                }
            }
        }
    }

}
