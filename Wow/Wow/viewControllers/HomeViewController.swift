//
//  HomeViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 19/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //@IBOutlet weak var menuButton: UIButton!
    @IBOutlet var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuButton.action=#selector(SWRevealViewController.rightRevealToggle(_:))
      // menuButton.addTarget(revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)), for: UIControlEvents.touchUpInside)
//
       self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
