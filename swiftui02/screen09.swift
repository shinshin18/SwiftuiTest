//
//  screen09.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/27.
//

import SwiftUI

struct screen09: View {
    @State var onSwitch = false
    @State var text = "hello"
    var body: some View {
        if onSwitch {
            HelloView(text : $text, text2: "テキスト２")
        } else {
            VStack{
                TextField("テキスト", text: $text)
                Button(action: {
                    self.onSwitch.toggle()
                }, label: {
                    Text("遷移")
                })
            }
        }
    }
}

struct HelloView : View {
    @Binding var text: String
    var text2: String
    var body: some View {
        Text(text + text2)
    }
}
