//
//  ViewController.swift
//  CodePath iOS 101 Final Project
//
//  Created by Reishiro Kawakami on R 5/11/10.
//

import UIKit

struct Building {
    let buildingName: String
    let numVacance: Int
    let rooms: [Room]
}

struct Room: Codable, Equatable {
    let roomName: String
    let status: Bool
}

extension Room {
    static var usedKey: String {
        return "Used"
    }
    static func save(_ rooms: [Room], forKey key: String) {
        let defaults = UserDefaults.standard
        let encodedData = try! JSONEncoder().encode(rooms)
        defaults.set(encodedData, forKey: key)
    }
    static func getRooms(forKey key: String) -> [Room] {
        let defaults = UserDefaults.standard
        if let data = defaults.data(forKey: key) {
            let decodedRooms = try! JSONDecoder().decode([Room].self, from: data)
            return decodedRooms
        } else {
            return []
        }
    }
    func addToUsed() {
        var usedRooms = Room.getRooms(forKey: Room.usedKey)
        usedRooms.append(self)
        Room.save(usedRooms, forKey: Room.usedKey)
    }
    
    func removeFromRooms() {
        var usedRooms = Room.getRooms(forKey: Room.usedKey)
        usedRooms.removeAll { room in
            return self == room
        }
        Room.save(usedRooms, forKey: Room.usedKey)
    }
}

class ViewController: UIViewController, UITableViewDataSource {

    private var buildings: [Building] = []
    
    @IBOutlet weak var buildingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildingTableView.dataSource = self
        // Do any additional setup after loading the view.
        let sci101 = Room(roomName: "Sci 101", status: true)
        
        let narples = Building(buildingName: "Dining Center", numVacance: 9, rooms: [sci101])
        let singer = Building(buildingName: "Singer Hall", numVacance: 10, rooms: [sci101])
        let kohlberg = Building(buildingName: "Kohlberg Hall", numVacance: 19, rooms:[sci101])
        let mccabe = Building(buildingName: "McCabe Library", numVacance: 21, rooms: [sci101])
        let cornell = Building(buildingName: "Cornell Library", numVacance: 4, rooms: [sci101])
        let beardsley = Building(buildingName: "Beardhley Hall", numVacance: 11, rooms: [sci101])
        let pearson = Building(buildingName: "Pearson Hall", numVacance: 7, rooms:[sci101])
        
        buildings = [narples, singer, kohlberg, mccabe, cornell, beardsley, pearson]
        
        self.buildingTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = buildingTableView.indexPathForSelectedRow else { return }
        let selectedBuilding = buildings[selectedIndexPath.row]
        guard let roomViewController = segue.destination as? RoomViewController else { return }
        roomViewController.building = selectedBuilding
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buildings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create the cell
        let cell = buildingTableView.dequeueReusableCell(withIdentifier: "BuildingCell", for: indexPath) as! BuildingCell
        let building = buildings[indexPath.row]
        //cell.textLabel?.text = building.buildingName

        cell.buildingNameLabel?.text = building.buildingName
        cell.buildingNumVacanceLabel?.text = "There are " + String(building.numVacance) + " rooms available"
        
        // Return the cell for use in the respective table view row
        return cell
    }

}

