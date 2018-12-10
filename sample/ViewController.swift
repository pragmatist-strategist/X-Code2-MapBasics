////
////  ViewController.swift
////  sample
////
////  Created by roy on 12/6/18.
////  Copyright © 2018 roy. All rights reserved.
////
//
//import UIKit
//import MapKit
//
//class ViewController: UIViewController {
////    var locationManager: CLLocationManager = CLLocationManager()
////    var startLocation: CLLocation!
//    var a:Int!
//    var c: Int!
//    var b:Int!
//    var d:Int!
//    var e:Int!
//    var f:Int!
//
//
//    @IBOutlet weak var txtField: UITextField!
//
//    @IBOutlet weak var lbl4: UIButton!
//    @IBOutlet weak var lblText: UILabel!
//    @IBOutlet weak var lbl2: UIButton!
//    @IBOutlet weak var lbl3: UIButton!
//
//    @IBOutlet weak var txtfld2: UITextField!
//    @IBOutlet weak var txtfld3: UITextField!
//    @IBOutlet weak var txtfld4: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view i.e. map in this case.
//        setUpMap()
//    }
//
////location manager instance is created by@ps
//var locationManager: CLLocationManager = CLLocationManager()
////to store the initial location of the map by @ps
//var startLocation: CLLocation!
//
//@IBOutlet weak var mapView: MKMapView!
////to store region size by @ps
//var regionRadius: CLLocationDistance = 1000
////for map object by @ps
//
//    //set up map
//func setUpMap(){
//    startLocation = CLLocation(latitude: 28.980, longitude: 77.8802)
//    centerMapOnLocation(location: startLocation)
//}
////center map on provided location i.e. delhi in this case.
//func centerMapOnLocation(location: CLLocation) {
//    let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
//    mapView.setRegion(coordinateRegion, animated: true)
//}
//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated so as to optimise the code @ps.
//}
//}
//
import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {
    //location manager instance
    var locationManager: CLLocationManager = CLLocationManager()
    
    //to store the initial location of the map
    var startLocation: CLLocation!
    //to store region size
    var regionRadius: CLLocationDistance = 1000
    //for map object
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpMap()
    }
    //set up map
    func setUpMap(){
        startLocation = CLLocation(latitude: 53.3561935, longitude: -6.3074785)
        centerMapOnLocation(location: startLocation)
    }
    //center map on provided location
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion =       MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
