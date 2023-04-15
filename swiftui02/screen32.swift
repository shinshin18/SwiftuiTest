//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen32: View {
    @State private var labelPosX:CGFloat = 0
       var body: some View {
           Text("Hello, World!")
           .offset(x: labelPosX)
           .gesture(DragGesture()
               .onEnded({ value in
                   if (abs(value.translation.width) < 10) { return } // too small movement, ignore note: 10 is default value for minimumDistance
                   if (value.translation.width < 0 ) {
                       // swiped to left
                       print("swipe to left")
                       self.labelPosX -= 30
                   } else if (value.translation.width > 0 ) {
                       // swiped to right
                       print("swipe to right")
                       self.labelPosX += 30
                   }
                   print("whdht:\(value.translation.width) height:\(value.translation.height)")
               })
           )
       }
}

struct screen32_Previews: PreviewProvider {
    static var previews: some View {
        screen32()
    }
}
