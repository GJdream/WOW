//
//  SignUpViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 18/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        SignUpWebserviceCall(email: "ghanshyam@gmail.com", password: "123456", name: "Ghanshyam", mobile: "9876543210", gender: "M", refferCode: "")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func SignUpWebserviceCall(email:String,password:String,name:String,mobile:String,gender:String,refferCode:String) {
        
        let dictionary:NSDictionary = [
            "username":"ghanshyam",
           "password":password,
            "email":email,
            "fname":name,
            "phoneno": mobile,
           "referral_code":refferCode,
            "gender":gender
            ]
        
        WebserviceCommunication.defaultCommunicator().httpPOSTEncodedString(methodName: METHOD_SIGNUP ,dict:dictionary)
        { (data, statusCode, error) in
            DispatchQueue.main.async {
                if(data != nil){
                    
                  //  Utility.hideProgressHud()
                    
                    let datastring = NSString(data: data as! Data, encoding: String.Encoding.utf8.rawValue)
                    
                    print(datastring)
                    
                    do{
                        let result :NSDictionary = try JSONSerialization.jsonObject(with: data as! Data, options: []) as! NSDictionary
                        
                        if((result["result"] as! NSNumber).intValue == 2)
                        {
                           
                        }
                    }catch{
                        
                    }
                    
                }else{
                    
                }
            }
        }
    }
}
