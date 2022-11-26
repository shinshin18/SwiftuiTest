//
//  screen19.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/23.
//

import SwiftUI

struct screen19: View {
    @State private var isShowingView: Bool = false
    @State private var num: Int = 1
    var body: some View {
        
        VStack {
            Button{
                num = num == 1 ? 2 : 1
            } label: {
                Text("No\(num)")
            }
            Button {
                isShowingView.toggle()
            } label: {
                Text("シート")
            }
            .sheet(isPresented: $isShowingView) {
                if num == 1 {
                    second1()
                } else {
                    second2()
                }
            }
        }
    }
}

struct second1: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("シート1を閉じる")
        }
    }
}

struct second2: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("シート2を閉じる")
        }
    }
}

struct screen19_Previews: PreviewProvider {
    static var previews: some View {
        screen19()
    }
}
