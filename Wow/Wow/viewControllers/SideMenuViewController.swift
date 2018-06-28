//
//  SideMenuViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 20/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class SideMenuViewController: UITableViewController {

    var sideMenuArray = NSArray()
    var sideImageArray = NSArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenuArray = ["Home","Profile","Refer & Earn","Card History","Change Language","Terms & Conditions","Logout"]
        
        sideImageArray = ["","","","","","",""]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section==0)
        {
            return 1;
        }else
        {
        return sideMenuArray.count
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if(indexPath.section==0)
        {
            let tableViewCell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell1") as! UITableViewCell
            return tableViewCell;
        }
        else{
            
        let tableViewCell:SideMenuViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! SideMenuViewCell
        tableViewCell.lblMenu.text = sideMenuArray.object(at: indexPath.row) as? String
        tableViewCell.lblIcon.text = sideImageArray.object(at: indexPath.row) as? String
//        tableViewCell.imgIcon.image = UIImage(named:(sideImageArray.objectAtIndex(indexPath.row) as? String)!)
//
            return tableViewCell
        }
        

    }
    
func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    if(indexPath.section==0)
    {
    return 100
    }
    else
    {
       return 40
    }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
