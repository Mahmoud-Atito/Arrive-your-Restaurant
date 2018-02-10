//
//  ViewController.swift
//  testLocation
//
//  Created by Mahmoud Ismaeil Atito on 2/2/18.
//  Copyright © 2018 Mahmoud Ismaeil Atito. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class testViewController: UIViewController {

    var placeClient : GMSPlacesClient!
    
    
    @IBOutlet weak var plcAddress: UITextField!
    @IBOutlet weak var plcName: UITextField!
    
let custmLoc = customLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        custmLoc.name = plcName.text!
        custmLoc.address = plcAddress.text!
        
        placeClient = GMSPlacesClient.shared()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getCurrentPlace(_ sender: Any) {
        
   /* placeClient.currentPlace(callback: { (placeLikelihoodList, error) -> Void in
        if let error = error {
            print("Pick Place Error: \(error.localizedDescription)")
            return
        }
        self.nameLabel.text! = "No current place"
        self.addressLabel.text! = ""
        
        if let palceLikelihoodList = placeLikelihoodList {
            let place = palceLikelihoodList.likelihoods.first?.place
            
            if let place = place{
                self.nameLabel.text! = place.name
                self.addressLabel.text! = (place.formattedAddress?.components(separatedBy: ", ")
                    .joined(separator:"\n"))!
                
                
            }
        }
        
      })*/
        
        self.performSegue(withIdentifier: "gotoLocation", sender: self)
//        custmLoc.name = plcName.text!
//        custmLoc.address = plcAddress.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoLocation"{
            let destinationAdd = segue.destination as! ViewController_2
            let destinationtitl = segue.destination as! ViewController_2
            destinationAdd.address = self.plcAddress.text!
            destinationtitl.titl = self.plcName.text!
    }
}
}


