//
//  CarsTableViewController.swift
//  SubTableViewWithSegueIOS
//
//  Created by Zenika on 21/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class CarsTableViewController: UITableViewController {
    
    let cars : [Car] = [
        Car(title: "Merco", img : UIImage(named : "Image"))
        ,Car(title: "mazda", img : UIImage(named:"Image"))
        ,Car(title: "opel", img : UIImage(named:"Image"))
        ,Car(title: "tesla", img : UIImage(named: "Image"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell else{
            fatalError("Not an CarTableViewCell")
        }
        let car = cars[indexPath.row]
        cell.titleLabel?.text = car.title
        cell.imgImageView?.image = car.img
        return cell
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
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let detailViewController = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                
                
                detailViewController.img = cars[indexPath.row].img
                
                detailViewController.title = cars[indexPath.row].title
            }
        }
    }
    
    
}
