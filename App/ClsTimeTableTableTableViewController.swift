//
//  ClsTimeTableTableTableViewController.swift
//  App
//
//  Created by Оля Миленина on 12.04.16.
//  Copyright © 2016 Екатерина. All rights reserved.
//


import UIKit

class ClsTimeTableTableTableViewController: UITableViewController {

    var testData: [ClsTimeTableItem]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        testData = [ClsTimeTableItem]()
        
        let item1 = ClsTimeTableItem()
        let item2 = ClsTimeTableItem()
    
        item1.labelAuthor = "Fred"
        item1.labelTimeEnd = NSDate(dateString: "2016-04-13")
        item1.labelPlace = "New York"
        item1.labelTimeStart = NSDate(dateString: "2016-04-13")
        

        item2.labelAuthor="Jack"
        item2.labelPlace="Los Angeles"
    
        
        testData?.append(item1)
        testData?.append(item2)
        
        self.tableView.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if testData == nil
        {
            return 0
        }
            
        else
        {
            return (testData?.count)!
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TimeTableItem", forIndexPath: indexPath)
        as! ClsTimeTableItemCell
        
        let conf = testData![indexPath.row] as ClsTimeTableItem
        
        cell.labelAuthor.text = conf.labelAuthor
        cell.labelPlace.text = conf.labelPlace
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .NoStyle
        
        if conf.labelTimeStart != nil{
            cell.labelTimeStart.text = dateFormatter.stringFromDate(conf.labelTimeStart!)
        }
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if segue.identifier == "ShowReport" {
            if let detailsViewController = segue.destinationViewController as? AboutConfViewController {
                
                // надо найти выбранный элемент
                // передать его в другой контроллер
                
                detailsViewController.showHtml()// = tappedColor
            }
        }
        
    
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  //  override func tableView(tableView: UITableView, numberOfRows
}
