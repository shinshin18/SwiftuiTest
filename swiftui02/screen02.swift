//
//  screen02.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen02: View {
    var body: some View {
        Text("contextMenu")
            .contextMenu
            {
                Button(action: {print("切り取り")}) {
                    Label("切り取り", systemImage: "scissors")
                }
                Button(action: {print("コピー")}) {
                    Label("コピー", systemImage: "doc.on.doc")
                }
                Button(action: {print("ペースト")}) {
                    Label("ペースト", systemImage: "doc.on.clipboard")
                }
                Button(action: {print("削除")}) {
                    Label("削除", systemImage: "trash")
                }
            }
    }
}

struct screen02_Previews: PreviewProvider {
    static var previews: some View {
        screen02()
    }
}
