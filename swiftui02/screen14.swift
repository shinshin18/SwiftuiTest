//
//  screen11.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/18.
//

import SwiftUI

struct screen14: View {
    let width = UIScreen.main.bounds.width / 3 - 10
    var body: some View {
        HStack {
            self.text("text1")
            self.text("text2")
            self.text("text3")
        }
    }
    func text(_ text: String) -> some View {
        return Text(text)
                .padding(.leading, 5.0)
                .frame(width: self.width, alignment: .leading)
                .border(Color.blue)
                .background(Color.red)
    }
}

struct screen14_Previews: PreviewProvider {
    static var previews: some View {
        screen14()
    }
}
