//
//  screen04.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct screen04: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            VStack(alignment: .leading){
                BikeListCell()
            }
        }
        //.position(x: 10, y: 20)
        //.frame(width: 20)
//                    .background(Color.red)
//                    .offset(x: 100, y: 200)
//                    .background(Color.orange)
    }
}

struct screen04_Previews: PreviewProvider {
    static var previews: some View {
        screen04()
    }
}
