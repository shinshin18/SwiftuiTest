//
//  BikeListCell.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct BikeListCell: View {
    var body: some View {
        HStack {
            Image("z900rs")
                .resizable()
                .frame(width: 100, height: 100)
            VStack{
                HStack{
                    Text("メーカー").frame(width: 100)
                    Text("カワサキ")
                }
                
                HStack{
                    Text("モデル").frame(width: 100)
                    Text("Z900RS")
                }
            }
        }
    }
}

struct BikeListCell_Previews: PreviewProvider {
    static var previews: some View {
        BikeListCell()
    }
}
