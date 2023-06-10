//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//  https://qiita.com/imchino/items/6d2e3df85692c142ad42
//

import SwiftUI

struct screen33: View {

    @ObservedObject var orientationObserver = OrientationObserver()

    var body: some View {
        Text("\(orientationObserver.currentDeviceOrientation)")
            .font(.title)
            .onAppear(perform: orientationObserver.start)
            .onDisappear(perform: orientationObserver.stop)
    }
}

struct screen33_Previews: PreviewProvider {
    static var previews: some View {
        screen33()
    }
}

class OrientationObserver: ObservableObject {
    @Published var currentDeviceOrientation: String = "OrientationObserver"
    private var orientationObserver: NSObjectProtocol? = nil
    let notification = UIDevice.orientationDidChangeNotification

    func start() {
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        orientationObserver = NotificationCenter.default.addObserver(forName: notification, object: nil, queue: .main) {
            [weak self] _ in
            switch UIDevice.current.orientation {
            case .faceUp:
                self?.currentDeviceOrientation = "Face Up"
            case .faceDown:
                self?.currentDeviceOrientation = "Face Down"
            case .portrait:
                self?.currentDeviceOrientation = "Portrait"
            case .portraitUpsideDown:
                self?.currentDeviceOrientation = "Portrait Upside Down"
            case .landscapeRight:
                self?.currentDeviceOrientation = "Landscape Right"
            case .landscapeLeft:
                self?.currentDeviceOrientation = "Landscape Left"
            case .unknown:
                self?.currentDeviceOrientation = "Unknown"
            default:
                break            }
        }
    }

    func stop() {
        if let orientationObserver = orientationObserver {
            NotificationCenter.default.removeObserver(orientationObserver, name: notification, object: nil)
        }
        orientationObserver = nil
        UIDevice.current.endGeneratingDeviceOrientationNotifications()
    }

    deinit {
        stop()
    }
}
