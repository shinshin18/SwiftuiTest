//
//  newview.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen31: View {
    @State private var fullScreenCover = false
    @State private var sheet = false
    var body: some View {
        VStack {
            Text("Hello there")
            Text("Hello there")
            Text("Hello there")
            Button("Start loading fullScreenCover") {
                fullScreenCover.toggle()
            }
            .padding()
            Button("Start loading sheet") {
                sheet.toggle()
            }
            .fullScreenCover(isPresented: $fullScreenCover) {
                ZStack {
                    Color.black.opacity(0.1).edgesIgnoringSafeArea(.all)
                    VStack {
                        ProgressView()
                        Button("Stop loading") {
                            fullScreenCover.toggle()
                        }
                    }
                }
                .background(BackgroundClearView())
            }
            .sheet(isPresented: $sheet) {
                ZStack {
                    Color.black.opacity(0.1).edgesIgnoringSafeArea(.all)
                    VStack {
                        ProgressView()
                        Button("Stop loading") {
                            sheet.toggle()
                        }
                    }
                }
                .backgroundClear
            }
        }
    }
}

struct BackgroundClearView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        //let view = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        let view = UIView()
        Task {
            view.superview?.superview?.backgroundColor = .clear
        }
//        DispatchQueue.main.async {
//            view.superview?.superview?.backgroundColor = .clear
//        }
        return view
    }
    func updateUIView(_ uiView: UIView, context: Context) {}
}

extension View {
    var backgroundClear: some View {
        background(BackgroundClearView())
    }
//    func backgroundClear() -> some View {
//        background(BackgroundClearView())
//    }
}

struct screen31_Previews: PreviewProvider {
    static var previews: some View {
        screen31()
    }
}
