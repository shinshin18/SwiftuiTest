//
//  screen24.swift
//  swiftui03
//
//  Created by Nobuhito Ogawa on 2022/11/11.
//

import SwiftUI
import MapKit

struct screen24: View {
    @State  var region = MKCoordinateRegion(
        center : CLLocationCoordinate2D(
            latitude: 35.710057714926265,   // 緯度
            longitude: 139.81071829999996   // 経度
        ),
        latitudinalMeters: 1000.0, // 南北
        longitudinalMeters: 1000.0 // 東西
    )

    var body: some View {
        // 地図を表示
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct screen24_Previews: PreviewProvider {
    static var previews: some View {
        screen24()
    }
}
