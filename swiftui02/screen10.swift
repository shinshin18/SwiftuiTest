//
//  screen01.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen10: View {
    let num: Int
    var body: some View {
        HStack {
            VStack {
                Text("hello\(num)")
                    .padding(.all)
                    .frame(width: 100.0, height: 50.0)
                    .background(Color.red)
                    .clipped()
                Spacer()
            }
            Spacer()
        }
    }
}

struct screen10_Previews: PreviewProvider {
    static var previews: some View {
        screen10(num: 11)
    }
}
