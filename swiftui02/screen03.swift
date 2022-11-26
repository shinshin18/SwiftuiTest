//
//  screen03.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen03: View {
    @State private var name = ""
    var body: some View {
        VStack {
            HStack {
                Text("名前").padding()
                TextField("あなたの名前", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())  // 入力域のまわりを枠で囲む
                .padding()
            }  // 余白を追加
            Text("こんにちは、\(name)さん")
        }
    }
}

struct screen03_Previews: PreviewProvider {
    static var previews: some View {
        screen03()
    }
}
