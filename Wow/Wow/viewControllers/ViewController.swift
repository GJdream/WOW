//
//  ViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 24/05/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     @IBAction func BtnLoginClicked(_ sender: Any) {
       let content =  storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(content, animated: true)
    }
    
    @IBAction func BtnSignUpClicked(_ sender: Any) {
        let content =  storyboard?.instantiateViewController(withIdentifier: "SignupVC") as! SignUpViewController
        self.navigationController?.pushViewController(content, animated: true)
    }

}

