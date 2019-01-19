//
//  VehicleViewController.swift
//  WebMotors
//
//  Created by Marcos V. S. Matsuda on 19/01/19.
//  Copyright © 2019 Marcos V. S. Matsuda. All rights reserved.
//

import UIKit
import Kingfisher

class VehicleViewController: UIViewController {

    @IBOutlet weak var ivVehicle: UIImageView!
    
    @IBOutlet weak var lbMakeModel: UILabel!
    
    @IBOutlet weak var lbVersion: UILabel!
    @IBOutlet weak var lbKM: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbYearModel: UILabel!
    @IBOutlet weak var lbYearFab: UILabel!
    @IBOutlet weak var lbColor: UILabel!
    
    var vehicle: Vehicle!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadVehicle()
//        navigationController?.popViewController(animated: true)
    }
    
    func loadVehicle(){
        if let url = URL(string: vehicle.Image){
            ivVehicle.kf.indicatorType = .activity
            ivVehicle.kf.setImage(with: url)
            
        }else{
            ivVehicle.image = nil
        }
        
        lbMakeModel.text = vehicle.Make + " " + vehicle.Model        
        lbVersion.text = vehicle.Version
        lbKM.text = String(vehicle.KM)
        lbPrice.text = vehicle.Price
        lbYearModel.text = String(vehicle.YearModel)
        lbYearFab.text = String(vehicle.YearFab)
        lbColor.text = vehicle.Color
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
