//
//  RoomCell.swift
//  CodePath iOS 101 Final Project
//
//  Created by Reishiro Kawakami on R 5/11/17.
//

import UIKit

class RoomCell: UITableViewCell {

    @IBOutlet weak var roomImage: UIImageView!
    
    @IBOutlet weak var roomNameLabel: UILabel!
    
    @IBOutlet weak var roomStatusLabel: UILabel!
    
    @IBOutlet weak var statusButton: UIButton!
    
    @IBAction func didTapStatusButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
