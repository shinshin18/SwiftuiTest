//
//  BikeCell.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct BikeCell: View {
    var body: some View {
        VStack {
            Image("z900rs")
                .resizable()
                .frame(width: 100, height: 100)
            Text("カワサキ")
            Text("Z900RS")
        }
    }
}

struct BikeCell_Previews: PreviewProvider {
    static var previews: some View {
        BikeCell()
    }
}
