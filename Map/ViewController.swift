//
//  ViewController.swift
//  Map
//
//  Created by 綿野拓也 on 2017/07/18.
//  Copyright © 2017年 綿野拓也. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var displayMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func halTokyo(_ sender: Any) {
        let center = CLLocationCoordinate2DMake(35.691529,139.696872)
        let span = MKCoordinateSpanMake(0.005, 0.005) //1度…１１１km
        let region = MKCoordinateRegionMake(center, span)
        displayMap.setRegion(region, animated:true)
        let pin = MKPointAnnotation()
        pin.coordinate = center
        pin.title="HAL東京"
        displayMap.addAnnotation(pin)


    }

    
    @IBAction func changeMap(_ sender: Any) {
        if displayMap.mapType == .hybrid{
            displayMap.mapType = .standard
        }else{
            displayMap.mapType = .hybrid
        }
    }

}

