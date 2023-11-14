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
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American",
                                       coordinate: CLLocationCoordinate2D(latitude: 21.331828009273963, longitude:
                                                                            -158.0835570183345))
        
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Assaggio", type: "Italian",
                                              coordinate: CLLocationCoordinate2D(latitude: 21.33243087828268, longitude: -158.08290110100847))
               mapView.addAnnotation(restaurantTwo)
        
        
    }
    
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)

           }

}

