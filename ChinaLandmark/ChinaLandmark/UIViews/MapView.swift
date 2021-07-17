//
//  MapView.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/15.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let center: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView { MKMapView() }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //  span:相当于比例尺/数字越小/地图越放大
        //  latitudeDelta:要在地图上显示的南北距离(以度为单位) 南北纬共180度
        //  longitudeDelta:要在地图上显示的东西距离(以度为单位) 东西经共360度
        let span = MKCoordinateSpan(
            latitudeDelta: 0.02,
            longitudeDelta: 0.02
        )
        
        uiView.setRegion(
            MKCoordinateRegion(center: center,span: span),
            animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(center: CLLocationCoordinate2D(
                    latitude: 39.9087243,
                    longitude: 116.3952859))
    }
}
