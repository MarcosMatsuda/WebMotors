//
//  VehicleTableViewCell.swift
//  WebMotors
//
//  Created by Marcos V. S. Matsuda on 19/01/19.
//  Copyright © 2019 Marcos V. S. Matsuda. All rights reserved.
//

import UIKit
import Kingfisher

class VehicleTableViewCell: UITableViewCell {

    @IBOutlet weak var lbVersion: UILabel!
    @IBOutlet weak var lbKm: UILabel!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var ivImageCar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepareCell(with vehicle: Vehicle){
        
        lbPrice.text = "R$ \(vehicle.Price)"
        lbTitle.text = vehicle.Make + " " + vehicle.Model
        lbVersion.text = vehicle.Version
        lbKm.text = String(vehicle.KM)
        if let url = URL(string: vehicle.Image){
            ivImageCar.kf.indicatorType = .activity
            ivImageCar.kf.setImage(with: url)
            
        }else{
            ivImageCar.image = nil
        }
    }

}
