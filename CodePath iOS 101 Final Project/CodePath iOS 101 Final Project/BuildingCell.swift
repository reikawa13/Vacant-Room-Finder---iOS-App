//
//  BuildingCell.swift
//  CodePath iOS 101 Final Project
//
//  Created by Reishiro Kawakami on R 5/11/11.
//

import UIKit

class BuildingCell: UITableViewCell {

    @IBOutlet weak var buildingImage: UIImageView!
    
    @IBOutlet weak var buildingNameLabel: UILabel!
    
    @IBOutlet weak var buildingNumVacanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
