//
//  ViewController.swift
//  project
//
//  Created by Mihir Solanki on 14/07/21.
//

import UIKit
// creating the structure

struct  People {
    var peopleImage: UIImage
    var name: String
    var detail: String
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    // create an array
    
    var array = [People(peopleImage: #imageLiteral(resourceName: "rectangle-4"), name: "Grace kelly", detail: "COMMITTE MEMBER"),People(peopleImage: #imageLiteral(resourceName: "rectangle-8"), name: "Amy Johnson", detail: "Senior Vice President, Marketing "),People(peopleImage: #imageLiteral(resourceName: "rectangle-7"), name: "Charlie Tabbot ", detail: "COMMITTE MEMBER , MODERATOR"),People(peopleImage: #imageLiteral(resourceName: "rectangle-6"), name: "Stephen Blarrisk", detail: "COMMITTE MEMBER"),People(peopleImage: #imageLiteral(resourceName: "rectangle-5"), name: "Tobby Snow", detail: "COMMITTE MEMBER")]
    
    var array2 = [People(peopleImage: #imageLiteral(resourceName: "rectangle-5"), name: "Tobby Snow", detail: "COMMITTE MEMBER"),People(peopleImage: #imageLiteral(resourceName: "rectangle-7"), name: "Charlie Tabbot", detail: "Senior Vice President, Marketing "),People(peopleImage: #imageLiteral(resourceName: "rectangle-7"), name: "Ammy Jhanson ", detail: "COMMITTE MEMBER , MODERATOR"),People(peopleImage: #imageLiteral(resourceName: "rectangle-6"), name: "Stephen Blarrisk", detail: "COMMITTE MEMBER"),People(peopleImage: #imageLiteral(resourceName: "rectangle-4"), name: "Grace kelly", detail: "COMMITTE MEMBER")]
    
    var array3 = [People(peopleImage: #imageLiteral(resourceName: "rectangle-11"), name: "Sandeep", detail: "Moderator"),People(peopleImage: #imageLiteral(resourceName: "rectangle-9"), name: "Amit", detail: "COMMITTE MEMBER"),People(peopleImage: #imageLiteral(resourceName: "rectangle-10"), name: "Angela", detail: "COMMITTE MEMBER")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Implement the methods of tableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if segmentController.selectedSegmentIndex == 0{
            return array.count
        }else if segmentController.selectedSegmentIndex == 1 {
            return array2.count
        }
        else{
            return  array3.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if segmentController.selectedSegmentIndex == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "customTable") as! customTable
            cell.personImage.image = array[indexPath.row].peopleImage
            cell.label1.text = array[indexPath.row].name
            cell.label2.text = array [indexPath.row].detail
            return cell
        }
        else if segmentController.selectedSegmentIndex == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "customTable") as! customTable
            cell.personImage.image = array2[indexPath.row].peopleImage
            cell.label1.text = array2[indexPath.row].name
            cell.label2.text = array2 [indexPath.row].detail
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "customTable") as! customTable
            cell.personImage.image = array3[indexPath.row].peopleImage
            cell.label1.text = array3[indexPath.row].name
            cell.label2.text = array3 [indexPath.row].detail
            return cell
        }
    }
    
    // set the height of the tsble view cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    @IBAction func sgment(_ sender: UISegmentedControl) {
        // load the tableView Data
        tableView.reloadData()
    }
    
}

