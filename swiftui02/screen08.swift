//
//  screen08.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/27.
//

import SwiftUI

struct screen08: View {
    var body: some View {
        VStack {
            screen06()
            screen07()
        }
        .environmentObject(ObservedFuga()) // この行でEnvironmentObjectを設定している
    }
}

struct screen08_Previews: PreviewProvider {
    static var previews: some View {
        screen08()
    }
}
