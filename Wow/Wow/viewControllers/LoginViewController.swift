//
//  LoginViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 13/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var TxtPassword: UITextField!
    @IBOutlet weak var TxtUserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//       LoginWebserviceCall(username: "987654321", password: "123456")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnLoginlClicked(_ sender: Any) {
        if (TxtUserName.text?.isEmpty)! || (TxtPassword.text?.isEmpty)! {
            let info = ["title":"Invalid Information",
                        "message":"Please enter correct user name and password",
                        "cancel":"Ok"]
            Utility.showAlertWithInfo(infoDic: info as NSDictionary)
        }
        else if(CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: TxtUserName.text!)) && TxtUserName.text!.count > 10)
        {
            let info = ["title":"Invalid Information",
                        "message":"Please enter correct Mobile number",
                        "cancel":"Ok"]
            Utility.showAlertWithInfo(infoDic: info as NSDictionary)
            
        }
        else if(!(CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: TxtUserName.text!))) && !validEmail(testStr: TxtUserName.text!)){
            let info = ["title":"Invalid Information",
                        "message":"Please enter correct Email Id",
                        "cancel":"Ok"]
            Utility.showAlertWithInfo(infoDic: info as NSDictionary)
        }
        else
        {
//            Utility.showProgressHud(text: "")
           
            
            LoginWebserviceCall(username: TxtUserName.text!, password: TxtPassword.text!)
        }
    }
            
    func validEmail(testStr:String) -> Bool {
        print("validate emilId: \(testStr)")
        let emailRegEx = "[A-Za-z][A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
    func LoginWebserviceCall(username:String,password:String) {
        
        
        let dictionary:NSDictionary = [
            "username" : username,
            "password":password,
            "device_id":"dfsfererereewrs"
        ]
        
        WebserviceCommunication.defaultCommunicator().httpPOSTEncodedString(methodName: METHOD_LOGIN ,dict:dictionary)
        { (data, statusCode, error) in
            DispatchQueue.main.async {
                if(data != nil){
                    
              //  Utility.hideProgressHud()
                    
                    let datastring = NSString(data: data as! Data, encoding: String.Encoding.utf8.rawValue)
                    
                    print(datastring)
                    
                    do{
                        let result :NSDictionary = try JSONSerialization.jsonObject(with: data as! Data, options: []) as! NSDictionary
                        
                        if((result["result"] as! NSNumber).intValue == 1)
                        {
                            let user = User(json: result["data"] as! NSDictionary)
                            print(user.EmailId)
                            let storyBoard:UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
                            let content = storyBoard.instantiateViewController(withIdentifier: "SWRevealVC") as! SWRevealViewController
                            self.navigationController?.pushViewController(content, animated: true)
                        }
                    }catch{
                        
                    }
                    
                }else{
                    
                }
            }
        }
    }
}
