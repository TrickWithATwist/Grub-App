//
//  View3.swift
//  Campus Cuisine
//
//
//

import SwiftUI
import MapKit

struct View3: View {
    
    /* establishing mutable variable for
     geographic location of user. @State means
     that the variable is mutable and "var"
     is the class type of the variable*/
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37, longitude: -121), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //MKCoordinateRegion establishes rectangular map
    //reigion in specific latitue and longitude
    var body: some View
    {
        //establish backdrop color
        //Color.black.ignoresSafeArea().overlay(
            
        //establing map
            Map(coordinateRegion: $region, showsUserLocation: true)
        
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}

//establishing class
/* "final" class type means that no other class can be
 inhereted from it*/
final class View3Model: ObservableObject
{
    var locationmanager: CLLocationManager?
        
        func checkiflocationservicesareenabled()
        {
            if CLLocationManager.locationServicesEnabled()
            {
                locationmanager = CLLocationManager()
                locationmanager?.desiredAccuracy = kCLLocationAccuracyBest
            }
            else
            {
                print("Please turn on location services to use map.")
            }
        }
        
}

