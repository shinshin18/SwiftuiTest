//
//  screen01.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen01: View {
    var body: some View {
        VStack{
            HStack {
                Label("切り取り", systemImage: "scissors")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                Spacer()
            }
            Spacer()
        }
    }
}

struct screen01_Previews: PreviewProvider {
    static var previews: some View {
        screen01()
    }
}
