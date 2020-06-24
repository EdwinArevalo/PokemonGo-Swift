//
//  ViewController.swift
//  PokemonGo
//
//  Created by mbtec22 on 6/24/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    var ubicacion = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        ubicacion.delegate = self
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse{
            mapView.showsUserLocation = true
            ubicacion.startUpdatingLocation()
        }else {
            ubicacion.requestWhenInUseAuthorization()
        }
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Ubicacion actualizada")
    }


}

