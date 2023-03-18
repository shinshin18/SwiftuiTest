//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen27: View {
    var body: some View {
        VStack {
            // .modifier(_:)、 ModifiedContent(content:modifier:)のどちらでも適用可能です。
            Text("Hello, world!")
                .modifier(CardModifier())
            ModifiedContent(content: Text("Hello, world!"),
                            modifier: CardModifier())
        }
    }
}

struct screen27_Previews: PreviewProvider {
    static var previews: some View {
        screen27()
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
