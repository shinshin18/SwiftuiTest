//
//  screen34.swift
//  swiftui02
//
//  Created by Nobuhito Ogawa on 2023/01/20.
//

import SwiftUI

struct screen34: View {

    @State var notice = ""
    @State var noticed = ""
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            TextField("通知", text: $notice).padding()
            Button("通知") {
                UNUserNotificationCenter.current().requestAuthorization(options: .alert) {_, _ in}
                localNotice("タイトル", "サブタイトル", notice)
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("didReceiveNotification"))) { notification in
            noticed = notification.userInfo?["noticeStr"] as? String ?? "nil"
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("タイトル"), message: Text("メッセージ:\(noticed)"))
        }
    }

    private func localNotice(_ title: String, _ subTitle: String, _ body: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.subtitle = subTitle
        content.body = body
        content.userInfo["noticeStr"] = notice
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: "com.swiftui02.local.notice", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}

struct screen34_Previews: PreviewProvider {
    static var previews: some View {
        newview()
    }
}
