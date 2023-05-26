//
//  RestaurantRoamerViewRepresentable.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI
import MapKit

struct RestaurantRoamerMapViewRepresentable: UIViewRepresentable {
    
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        mapView.showsCompass = false
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let userTrackingButton = uiView.subviews.first(where: { $0 is MKUserTrackingButton }) as? MKUserTrackingButton {
            userTrackingButton.frame = CGRect(origin: CGPoint(x: 334, y: 90), size: CGSize(width: 40, height: 40))
            
        } else {
            let userTrackingButton = MKUserTrackingButton(mapView: (uiView as! MKMapView))
            userTrackingButton.frame = CGRect(origin: CGPoint(x: 334, y: 90), size: CGSize(width: 40, height: 40))
            userTrackingButton.backgroundColor = UIColor(rgb: 0xFFFF9300)
            userTrackingButton.tintColor = UIColor.white
            userTrackingButton.layer.cornerRadius = 8
            userTrackingButton.layer.opacity = 1
            uiView.addSubview(userTrackingButton)
        }
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
    
//    func recenterLocation(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
//        class MapCoordinator: NSObject, MKMapViewDelegate {
//            let parent: RestaurantRoamerMapViewRepresentable
//
//            init(parent: RestaurantRoamerMapViewRepresentable) {
//                self.parent = parent
//                super.init()
//            }
//
//            func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
//                let region = MKCoordinateRegion(
//                    center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
//                    span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//                )
//
//                parent.mapView.setRegion(region, animated: true)
//            }
//        }
//    }
//    @StateObject var mapData = MapViewModel()
//
//    func recenterMap() {
//        guard let _ = region else { /// check if `region` is not nil. if `region` is nil, the function exits early.
//            return
//        }
//        mapView.setRegion(region, animated: true) /// will be executed when  `region` is not nil
//        mapView.setVisibleMapRect(mapView.visibleMapRect, animated: true)
//    }
//
//    Button(action: {
//        mapData.recenterMap()
//    }, label: {
//        Image(systemName: "location.fill")
//            .font(.title2)
//            .padding(15)
//            .foregroundColor(Color("AccentColor"))
//            .background(Color("gray"))
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    })
}

extension RestaurantRoamerMapViewRepresentable {
    
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: RestaurantRoamerMapViewRepresentable
        
        init(parent: RestaurantRoamerMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
//        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
//            let region = MKCoordinateRegion(
//                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
//                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//            )
//
//            parent.mapView.setRegion(region, animated: true)
//        }
    }
}
