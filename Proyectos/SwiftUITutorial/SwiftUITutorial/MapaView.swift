//
//  MapaView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI
import MapKit

struct MapaView: View {
    var body: some View {
        Text("Mapa")
        MapaViewKit()
            //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 350, height: 350)
    }
}

// Se trae componentes de UIKit para que se ejecute en ...
// SwiftUI Se necesita llamar ala clase "UIViewRepresentable"

struct MapaViewKit: UIViewRepresentable{
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coodinate = CLLocationCoordinate2D(latitude: 40.130176, longitude: -3.7495762)
        let spam = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let redion = MKCoordinateRegion(center: coodinate, span: spam)
        
        uiView.setRegion(redion, animated: true)
    }
    
}

#Preview {
      MapaView()
    //MapaViewKit()
}
