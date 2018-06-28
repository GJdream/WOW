//
//  BaseModel.swift
//  LogsCheck
//
//  Created by Akash Deep Kaushik on 30/09/17.
//  Copyright © 2017 Akash Deep Kaushik. All rights reserved.
//

import UIKit


class BaseModel: NSObject {
    
    var ISFailed:Bool!
    var statusCode:String!
    var ErrorMessage:String!
    
    init(json:NSDictionary) {
       
        do{
            
            
        }catch {
            print("\(error)")
        }
        
        
    }
    
}
