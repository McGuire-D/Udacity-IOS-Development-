//
//  AnnotationPin.swift
//  Virtual Tourist
//
//  Created by Dustin McGuire on 9/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import MapKit


class AnnotationPin: MKPointAnnotation {
    var pin: Pin

    init(pin: Pin){
        self.pin = pin
        super.init()
        self.coordinate = CLLocationCoordinate2D(latitude: pin.latitude, longitude: pin.longitude)
    }
}
