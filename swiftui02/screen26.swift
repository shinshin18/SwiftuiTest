//
//  screen26.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/02/27.
//

import SwiftUI

struct screen26: View {

    @State private var text = ""
    
    var body: some View {
        Button(action: {
            guard let fileURL = Bundle.main.url(forResource: "textfile", withExtension: "txt"),
                  let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) else {
                      fatalError("読み込み出来ません")
                  }
            text = fileContents
        }, label: {
            Text("プロジェクト内ファイル読み込み")
        })
        Text(text)
    }
}

struct screen26_Previews: PreviewProvider {
    static var previews: some View {
        screen26()
    }
}
