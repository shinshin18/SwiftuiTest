//
//  screen11.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/18.
//

import SwiftUI

struct screen15: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Circle()
                .frame(width: 200,
                       height: 200,
                       alignment: .center)
                .foregroundColor(.orange)
            Text("ZStack")
                .padding([.top, .leading], 10.0)
        }
        .border(Color.blue)
    }
}

struct screen15_Previews: PreviewProvider {
    static var previews: some View {
        screen15()
    }
}
