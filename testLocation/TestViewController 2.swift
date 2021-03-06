//
//  ViewController 2.swift
//  testLocation
//
//  Created by Mahmoud Ismaeil Atito on 2/2/18.
//  Copyright © 2018 Mahmoud Ismaeil Atito. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces



class ViewController_2: UIViewController {
    
    var placeClient : GMSPlacesClient!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    let cutmLoc = customLocation()
    var titl: String?
    var address: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title =  titl
        marker.snippet = address
        marker.map = mapView
        
        placeClient = GMSPlacesClient.shared()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
