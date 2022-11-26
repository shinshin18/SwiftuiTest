//
//  screen21.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/10/16.
//

import SwiftUI

struct screen21: View {

    private func title() -> String {
        print("screen21.title")
        return "2こ目のView"
    }
    
    var body: some View {
        NavigationLink(destination: screen21_2()) {
            Text(self.title())
        }
        .onAppear {
            print("最初のView 表示された！")
        }
        .onDisappear {
            print("最初のView 消えた！")
        }
    }
}

struct screen21_2: View {
    @State var size: CGFloat = 1.0
    
    private func title() -> String {
        print("screen21_2.title")
        return "2こ目のView"
    }

    var body: some View {
        VStack {
            Text(self.title())
                .font(.system(size: 300))
                .scaleEffect(size)
                .animation(.easeInOut, value: true)
            .fixedSize()
        }.onAppear {
            print("2こ目のView　表示された！")
            withAnimation {
                self.size = 0.1
            }
        }.onDisappear {
            print("2こ目のView 消えた!")
        }
    }
}

struct screen21_Previews: PreviewProvider {
    static var previews: some View {
        screen21()
    }
}
