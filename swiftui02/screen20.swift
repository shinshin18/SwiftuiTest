//
//  ContentView.swift
//  swiftui01
//
//  Created by Nobuhito Ogawa on 2022/09/23.
//

import SwiftUI

struct screen20: View {
    var body: some View {
        ScrollView (.horizontal){
            HStack {
                ForEach(0..<20, id: \.self) { index in
                    cell()
                }
            }
        }
    }
}

struct cell: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Image("z900rs")
                    .resizable()
                    .frame(width: 50, height: 50)
                VStack {
                    data(title: "名前", value: "山田太郎")
                    data(title: "趣味", value: "バイク")
                }
            }
            .background(Color.mint)
            Text("abc")
                .frame(width: 210, height: 80, alignment: .topLeading)
                .background(Color.red)
        }
        .border(Color.green, width: 3)
    }
}

struct data: View {
    let title: String
    let value: String
    var body: some View {
        HStack {
            Text(title)
                .frame(width: 50, alignment: .leading)
                .background(Color.red)
            Text(value)
                .frame(width: 100, alignment: .leading)
                .background(Color.blue)
        }
        .background(Color.yellow)
    }
}

struct screen20_Previews: PreviewProvider {
    static var previews: some View {
        screen20()
    }
}
