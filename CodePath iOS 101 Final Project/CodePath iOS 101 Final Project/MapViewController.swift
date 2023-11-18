//
//  MapViewController.swift
//  CodePath iOS 101 Final Project
//
//  Created by Reishiro Kawakami on R 5/11/17.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let swarthmoreAddress = CLLocation(latitude: 39.906551, longitude: -75.351878)
        let regionRadius: CLLocationDistance = 1000.0
        let region = MKCoordinateRegion(center: swarthmoreAddress.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
    }
}

extension MapViewController: MKMapViewDelegate {
    func mapViewWillStartRenderingMap(_ mapView: MKMapView) {
        print("rendering...")
    }
}
