//
//  WebMotorsAPI.swift
//  WebMotors
//
//  Created by Marcos V. S. Matsuda on 19/01/19.
//  Copyright © 2019 Marcos V. S. Matsuda. All rights reserved.
//

import Foundation
import Alamofire

class WebMotorsAPI{
    
    static private let basePath = "http://desafioonline.webmotors.com.br/api/OnlineChallenge/"
    
    class func loadVehicles(page: Int = 0, onComplete: @escaping ([Vehicle]?) -> Void ){
        let url = basePath + "Vehicles?" + "Page=\(page)"
        Alamofire.request(url).responseJSON { (response) in

            guard let data = response.data else {
                onComplete(nil)
                return
            }

            do {
                let vehicles = try JSONDecoder().decode([Vehicle].self, from: data)
                onComplete(vehicles)
            }catch{
                print(error.localizedDescription)

            }

        }
    }
    
}
