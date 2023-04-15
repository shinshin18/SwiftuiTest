//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen32: View {
    @State var searchTextEntered: String = ""
    var allCatNames = ["ムギ", "ソラ", "リン"]

    var body: some View {
        NavigationView {
            Form {
                List {
                    ForEach(allCatNames, id: \.self) { catName in
                        Text(catName)
                            .swipeActions(edge: .leading) {
                                Button {
                                    print("pinned \(catName)")
                                } label: {
                                    Image(systemName: "bookmark")
                                }
                                .tint(.blue)
                            }
                    }
                }
                .searchable(text: $searchTextEntered)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

    var searchResults: [String] {
        if searchTextEntered.isEmpty {
            return allCatNames
        } else {
            return allCatNames.filter { catName in
                return catName.contains(searchTextEntered)
            }
        }
    }
}

struct screen32_Previews: PreviewProvider {
    static var previews: some View {
        screen32()
    }
}
