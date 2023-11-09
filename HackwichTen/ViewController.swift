//
//  ViewController.swift
//  HackwichTen
//
//  Created by Marijoy Jatico on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude:
         -158.056022)
    
    let regionRadius = 10000
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
    }
    
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)

           }

}

