//
//  screen25.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/02/24.
//

import SwiftUI

struct screen25: View {
    let animals = ["🐱", "🐶", "🐥"]

    @State private var path = [String]()

    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack(path: $path) {
                List {
                    ForEach(animals, id: \.self) { animal in
                        Button {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                // 実際にはサーバから取得
                                let name = ["🐱": "ねこ", "🐶": "いぬ"]
                                guard let name = name[animal] else {
                                    return
                                }
                                path.append(name)
                            }
                        } label: {
                            Text(animal)
                        }
                    }
                }
                .navigationDestination(for: String.self) { name in
                    Text(name)
                }
            }
        } else {
            Text("iOS 16以上のページだ")
        }
    }
}

struct screen25_Previews: PreviewProvider {
    static var previews: some View {
        screen25()
    }
}
