//
//  PinAnnotation.swift
//  TrabalhoFinaliOSAvancado
//
//  Created by iossenac on 12/11/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import UIKit
import MapKit

class PinAnnotation: NSObject, MKAnnotation {
    
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    let station:WeatherStation?
    
    init(station: WeatherStation) {
        self.station = station
        title = station.station!
        coordinate = station.coordinate()!
        
        super.init()
    }

}
