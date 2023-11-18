//
//  RoomViewController.swift
//  CodePath iOS 101 Final Project
//
//  Created by Reishiro Kawakami on R 5/11/17.
//

import UIKit

class RoomViewController: UIViewController, UITableViewDataSource {
    
    var building: Building!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomTableView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        self.roomTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return building.rooms.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create the cell
        let cell = roomTableView.dequeueReusableCell(withIdentifier: "RoomCell", for: indexPath) as! RoomCell
        
        let room = building.rooms[indexPath.row]
        // Configure the cell (i.e. update UI elements like labels, image views, etc.)
        // Get the row where the cell will be placed using the `row` property on the passed in `indexPath` (i.e., `indexPath.row`)
        cell.roomNameLabel.text = room.roomName
        if room.status == true {
            cell.roomStatusLabel.text = "Available"
        }
        else {
            cell.roomStatusLabel.text = "Not Available"
        }
            

        // Return the cell for use in the respective table view row
        return cell
    }
    
    
    @IBOutlet weak var roomTableView: UITableView!

}
