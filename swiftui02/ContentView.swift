//
//  ContentView.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Group {
                    NavigationLink(destination: screen01()) {
                        Text("Label")
                    }
                    NavigationLink(destination: screen02()) {
                        Text("Context menu")
                    }
                    NavigationLink(destination: screen03()) {
                        Text("TextField")
                    }
                    NavigationLink(destination: screen04()) {
                        Text("バイクリスト")
                    }
                    NavigationLink(destination: screen05()) {
                        Text("バイクリスト")
                    }
                    NavigationLink(destination: screen08()) {
                        Text("ObservableObject、EnvironmentObject")
                    }
                    NavigationLink(destination: screen09()) {
                        Text("View間値渡し")
                    }
                    NavigationLink(destination: screen10(num: 10)) {
                        Text("左上表示、Structに引数")
                    }
                    NavigationLink(destination: screen11()) {
                        Text("左寄せ")
                    }
                    NavigationLink(destination: screen12()) {
                        Text("テキスト高さ可変")
                    }
                }
                Group {
                    NavigationLink(destination: screen13()) {
                        Text("テーブルデータ更新")
                    }
                    NavigationLink(destination: screen14()) {
                        Text("画面幅に合わせたテキスト幅")
                    }
                    NavigationLink(destination: screen15()) {
                        Text("ZStack")
                    }
                    NavigationLink(destination: screen16()) {
                        Text("UIKit連携")
                    }
                    NavigationLink(destination: screen17()) {
                        Text("Form、onChange")
                    }
                    NavigationLink(destination: screen18()) {
                        Text("テキスト高さ可変リスト")
                    }
                    NavigationLink(destination: screen19()) {
                        Text("モーダル画面遷移先切り替え")
                    }
                    NavigationLink(destination: screen20()) {
                        Text("横スクロール")
                    }
                    NavigationLink(destination: screen21()) {
                        Text("画面ライフサイクル")
                    }
                    NavigationLink(destination: screen22()) {
                        Text("サイドメニュー View横スライド方式")
                    }
                }
                Group {
                    NavigationLink(destination: screen23()) {
                        Text("サイドメニュー")
                    }
                    NavigationLink(destination: screen24()) {
                        Text("地図 MapKit")
                    }
                    NavigationLink(destination: screen25()) {
                        Text("画面遷移 NavigationStack")
                    }
                }
            }
            .navigationTitle("NavigationBar")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {print("削除")}) {
                        Label("削除", systemImage: "trash")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
