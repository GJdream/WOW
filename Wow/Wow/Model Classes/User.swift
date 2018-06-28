//
//  User.swift
//  Wow
//
//  Created by Ghanshyam Jain on 17/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class User: BaseModel {
    var City :String!
    var State :String!
    var userName  :String!
    var Subscribe :Bool!
    var Name :String!
    var Postcode :String!
    var MobileNumber :String!
    var Address : String!
    var EmailId : String!
    var Country :String!
    var Email_Subscription : Bool!
    var Mobile_Subscription : Bool!
    var Earned : String!
    var JoinDate :String!
    var UserId :String!
    var gender : String!
    
    override init(json:NSDictionary) {
        super.init(json:json)
        do{
                City = json.value(forKey: "cust_city") as! String
                State = json.value(forKey: "cust_state") as! String
                userName  = json.value(forKey: "cust_userid") as! String
                Name = json.value(forKey: "full_name") as! String
                Postcode = json.value(forKey: "cust_postcode") as! String
                MobileNumber = json.value(forKey: "cust_mobile_no") as! String
                Address = json.value(forKey: "cust_address") as! String
                EmailId  = json.value(forKey: "cust_login_email") as! String
                Country  = json.value(forKey: "cust_country") as! String
                //    Email_Subscription = json.value(forKey: "email_subscribe") as! Bool
                //    Mobile_Subscription = json.value(forKey: "mobile_subscribe") as! Bool
//                Earned = json.value(forKey: "cus_earned") as! String
                JoinDate = json.value(forKey: "cust_join_date") as! String
                UserId = json.value(forKey: "cus_id") as! String
                gender = json.value(forKey: "gender") as! String
            }catch {
            print("\(error)")
        }
}
}
