//
//  screen22.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2022/11/11.
//
// https://qiita.com/kazy_dev/items/494a714b5a4baabee780

import SwiftUI

struct screen22: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.show = true
                }) {
                    Text("show side menu")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                        .foregroundColor(.white)
                }
            }
            .blur(radius: show ? 20 : 0)
            MenuView(show: $show)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView: View {

    var menu = [Menu(type: .myAccount),
                Menu(type: .setting),
                Menu(type: .favorite),
                Menu(type: .faq),
                Menu(type: .signOut),]

    @Binding var show: Bool

    var body: some View {
        let screenSize = UIScreen.main.bounds.size
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        HStack {
            VStack(alignment: .center) {
                Image("female")
                    .resizable()
                    .scaleEffect(2)
                    .offset(x: 0, y: 20)
                    .aspectRatio(5/7, contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)

                Text("Miranda Jeen")

                HStack {
                    VStack {
                        Text("follow")
                        Text("211")
                    }
                    .padding()

                    VStack {
                        Text("follower")
                        Text("324")
                    }
                    .padding()
                }
                .padding(.vertical)

                VStack(alignment: .leading) {
                    ForEach(menu) { item in
                        MenuRow(image: item.type.imageName, text: item.type.title)
                    }
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(30)
            .frame(width: screenSize.width/1.5)
            .background(Color.blue.opacity(0.4))
            .cornerRadius(20)
            .animation(.default)
            .offset(x: show ? 0 : -screenSize.width)
            .onTapGesture {
                self.show.toggle()
            }
            Spacer()
        }
        .padding(.top, statusBarHeight)
    }
}

struct screen22_Previews: PreviewProvider {
    static var previews: some View {
        screen22()
    }
}

struct Menu: Identifiable {
    enum MenuType: String {
        case myAccount = "My Account"
        case setting = "Setting"
        case favorite = "Favorite"
        case faq = "FAQ"
        case signOut = "SignOut"

        var title: String { self.rawValue }

        var imageName: String {
            switch self {
            case .myAccount: return "person.crop.circle"
            case .setting: return "wrench"
            case .favorite: return "star.circle"
            case .faq: return "questionmark.circle"
            case .signOut: return "arrow.turn.up.left"
            }
        }
    }
    var id = UUID()
    var type: MenuType
}

struct MenuRow: View {

    var image = ""
    var text = ""

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: image)
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
                Text(text)
                    .font(.headline)
                Spacer()
            }
        }
    }
}
