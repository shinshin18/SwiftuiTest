//
//  screen07.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/27.
//

import SwiftUI

struct screen07: View {
    
    @EnvironmentObject var environment: ObservedFuga
    
    var body: some View {
         Text("value is \(self.environment.value)")
     }
}

struct screen07_Previews: PreviewProvider {
    static var previews: some View {
        screen07()
            .environmentObject(ObservedFuga())
    }
}
