//
//  NearMeController.swift
//  TestApp WatchKit Extension
//
//  Created by Ridhi Jain on 20/04/22.
//

import Foundation
import WatchKit
import CoreLocation
import MapKit
import SwiftUI

class NearMeController: WKInterfaceController {
    
    @IBOutlet var mapObject: WKInterfaceMap!
    @ObservedObject var locationManager = LocationManager()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        print("awake", self.locationManager.location)
        
//        let location = locationManager.location! as CLLocation
        let center = CLLocationCoordinate2D(latitude: +19.01761470, longitude: +72.85616440)
        print("center", center)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        self.mapObject.setRegion(region)
        self.mapObject.setShowsUserLocation(true)

    }
    
//    func getNearbyAtms() {
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = "ATM"
//        let search = MKLocalSearch(request: request)
//    }
    
    override func willActivate() {
        print("willactivate")
    }
    
    override func didDeactivate() {
        print("diddeactivate")
    }
    
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print("calling didUpdate")
//        let location = locations.last! as CLLocation
//        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//        print("center", center)
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7))
//        self.mapObject.setRegion(region)
//        self.mapObject.setShowsUserLocation(true)
//    }
//
//    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
//
//        print(error.description)
//    }
    
    

}
