//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen28: View {
    
    @State var showToast = false
    private let width = UIScreen.main.bounds.size.width
    private let height = UIScreen.main.bounds.size.height

    var body: some View {
        VStack {
            Button("Show Toast") {
                if !showToast {
                    showToast = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        showToast = false
                    }
                }
            }
            Text("Toast")
                .padding()
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .animation(.easeInOut, value: showToast)
                .position(x: width / 2, y: showToast ? height - 200 : height)
                .onTapGesture {
                    showToast = false
                }
        }
    }
}

struct screen28_Previews: PreviewProvider {
    static var previews: some View {
        screen28()
    }
}
