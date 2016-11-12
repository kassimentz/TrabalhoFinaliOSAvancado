//
//  WeatherStation.swift
//  TrabalhoFinaliOSAvancado
//
//  Created by iossenac on 12/11/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import UIKit
import MapKit

struct WeatherStation {
    let station: String?
    let latitude: Double?
    let longitude: Double?
    let temperaturaExterna: Double?
    let sensacaoTermica: Double?
    let temperaturaMinimaPrevisao: Double?
    let temperaturaMaximaPrevisao: Double?
    
    func coordinate() -> CLLocationCoordinate2D? {
        if let lat = latitude, let long = longitude {
            let coordinate = CLLocationCoordinate2D(latitude:CLLocationDegrees(lat), longitude:CLLocationDegrees(long))
            return coordinate
        }
        return nil
    }
}
