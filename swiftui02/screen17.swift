//
//  screen17.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/09/22.
//

import SwiftUI

struct screen17: View {
    @State private var inputValue = ""
    var body: some View {
        Form {
            TextField("文字列を入力してください", text: $inputValue)
            Text("部品1")
            Text("部品2")
            Text("部品3")
        }
        .onChange(of: inputValue) { newValue in
            print("newValue = [\(newValue)]")
        }
    }
}

struct screen17_Previews: PreviewProvider {
    static var previews: some View {
        screen17()
    }
}
