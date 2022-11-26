//
//  screen11.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/18.
//

import SwiftUI

struct screen11: View {
    var body: some View {
        VStack {
            Text("左寄せ")
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(Color.green)
            Spacer()
        }
    }
}

struct screen11_Previews: PreviewProvider {
    static var previews: some View {
        screen11()
    }
}
