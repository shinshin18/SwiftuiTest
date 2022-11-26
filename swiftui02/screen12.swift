//
//  screen11.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/18.
//

import SwiftUI

struct screen12: View {
    @State var text = ""
    var body: some View {
        if #available(iOS 16.0, *) {
            TextField("高さ可変", text: $text, axis: .vertical)
                .frame(width: 100)
                .border(Color.blue)
        } else {
            TextField("高さ可変", text: $text)
                .frame(width: 100)
                .border(Color.blue)
        }
    }
}

struct screen12_Previews: PreviewProvider {
    static var previews: some View {
        screen12()
    }
}
