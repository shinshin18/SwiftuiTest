//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//  https://i-app-tec.com/swiftui/magnificationgesture.html
//

import SwiftUI

struct screen30: View {

    @State var scale = 1.0

    var body: some View {
        Text("1ピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウト\nピンチインアウトです")
            .padding()
            .multilineTextAlignment(.center)
            .scaleEffect(scale)
            .gesture(MagnificationGesture()
                .onChanged { value in
                    scale = value
            })
    }
}

struct screen30_Previews: PreviewProvider {
    static var previews: some View {
        screen30()
    }
}
