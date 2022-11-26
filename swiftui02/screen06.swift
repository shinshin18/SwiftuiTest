//
//  screen06.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/27.
//

import SwiftUI

class ObservedFuga : ObservableObject {
    @Published var isDisp: Bool = false
    @Published var value = 0.0
}

struct screen06: View {
    
    @EnvironmentObject var environment: ObservedFuga
    
    var body: some View {
        VStack {
            Slider(value: self.$environment.value, in: 0...100)
        }
    }
}

struct screen06_Previews: PreviewProvider {
    static var previews: some View {
        screen06()
            .environmentObject(ObservedFuga())
    }
}
