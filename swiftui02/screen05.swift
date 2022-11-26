//
//  screen05.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen05: View {
    private var columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 10), spacing: CGFloat(0.0) ), count: 3)
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, alignment: .center, spacing: 0) {
                ForEach((1...20), id: \.self) { num in
                    BikeCell()
                    //Text("\(num)")
                }
            }
        }
    }
}

struct screen05_Previews: PreviewProvider {
    static var previews: some View {
        screen05()
    }
}
