//
//  screen11.swift
//  swiftui02
//
//  Created by ogawa on 2022/09/18.
//

import SwiftUI

struct screen13: View {
    @State var articles: [String] = [
        "Article01",
        "Article02",
        "Article03",
        "Article04",
        "Article05",
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List($articles, id: \.self) { $article in
                    Text(article)
                }
                .refreshable {
                    articles.append("New Article")
                }
                .navigationTitle("Article List")
            }
            Button(action: {
                articles.append("New Article")
            },
                   label: {Text("update")}
            )
        }
    }
}

struct screen13_Previews: PreviewProvider {
    static var previews: some View {
        screen13()
    }
}
