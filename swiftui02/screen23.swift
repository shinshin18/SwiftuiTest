//
//  screen23.swift
//  swiftui03
//
//  Created by Nobuhito Ogawa on 2022/11/11.
//
// https://dev.classmethod.jp/articles/swiftui_overlay_sidemenu/

import SwiftUI

struct screen23: View {
    @State var isOpenSideMenu: Bool = false
    @State var text = "Hello, World!"
    var body: some View {
        ZStack{
            Text(text)
                .navigationBarTitle("メイン画面")
                .navigationBarItems(leading: (
                    Button(action: {
                        self.isOpenSideMenu.toggle()
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                }))
            SideMenuView(isOpen: $isOpenSideMenu, text: $text)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct screen23_Previews: PreviewProvider {
    static var previews: some View {
        screen23()
    }
}

struct SideMenuView: View {
    @Binding var isOpen: Bool
    @Binding var text: String
    let width: CGFloat = 270

    var body: some View {
        ZStack {
            GeometryReader { geometry in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .opacity(1.0)
            .animation(.easeIn(duration: 0.25))
            .onTapGesture {
                self.isOpen = false
            }

            HStack {
                VStack() {
                    SideMenuContentView(topPadding: 100, systemName: "person", text: "Profile", bindText: $text, isOpen: $isOpen)
                    SideMenuContentView(systemName: "bookmark", text: "Bookmark", bindText: $text, isOpen: $isOpen)
                    SideMenuContentView(systemName: "gear", text: "Setting", bindText: $text, isOpen: $isOpen)
                    Spacer()
                }
                .frame(width: width)
                .background(Color(UIColor.systemGray6))
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.easeIn(duration: 0.25))
                Spacer()
            }
        }
    }
}

// セルのビュー
struct SideMenuContentView: View {
    let topPadding: CGFloat
    let systemName: String
    let text: String
    @Binding var bindText: String
    @Binding var isOpen: Bool

    init(topPadding: CGFloat = 30, systemName: String, text: String, bindText: Binding<String>, isOpen: Binding<Bool>) {
        self.topPadding = topPadding
        self.systemName = systemName
        self._bindText = bindText
        self._isOpen = isOpen
        self.text = text
    }

    var body: some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.gray)
                .imageScale(.large)
                .frame(width: 32.0)
            Text(text)
                .foregroundColor(.gray)
                .font(.headline)
            Spacer()
        }
        .padding(.top, topPadding)
        .padding(.leading, 32)
        .onTapGesture {
            self.bindText = self.text
            self.isOpen = false
        }
    }
}
