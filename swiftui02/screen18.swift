//
//  screen04.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen18: View {
    @State var texts = ["", "", "","", ""]
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            if #available(iOS 16.0, *) {
                TextField("テキスト", text: $texts[item], axis: .vertical)
                    .frame(width: 100.0)
            } else {
                TextField("テキスト", text: $texts[item])
            }
        }
    }
}

struct screen18_Previews: PreviewProvider {
    static var previews: some View {
        screen18()
    }
}
