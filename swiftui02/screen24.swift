//
//  screen24.swift
//  swiftui03
//
//  Created by Nobuhito Ogawa on 2022/11/11.
//

import SwiftUI

struct screen24: View {
    var body: some View {
        Text("こんにちはああああああああああああああああああああああああああああいうえお")
            .background(Color.blue)
            .border(Color.red, width: 3)
            .onAppear {
                print("screen24 表示された！")
                self.dispatchQueue()
            }
    }
    
    func dispatchQueue() {
        print(#line, Date().description)
        DispatchQueue.global(qos: .userInitiated).async {
            Thread.sleep(forTimeInterval: 3)
            print(#line)
            DispatchQueue.main.async {
                print(#line)
            }
        }
        print(#line)
    }
}

struct screen24_Previews: PreviewProvider {
    static var previews: some View {
        screen24()
    }
}
