//
//  ContentView.swift
//  swiftui01
//
//  Created by ogawa on 2022/09/13.
//

import SwiftUI

struct PowderOrangeLabel:UIViewRepresentable {
    @Binding var textString:String
    func makeUIView(context: Context) -> UILabel {
        let control = UILabel()
        control.numberOfLines = 2
        return control
    }
    func updateUIView(_ uiView: UILabel, context: Context) {
        if textString != "" {
            uiView.text = textString + "。\r\nすごいと思いました。(小並感)"
        }
        else {
            uiView.text = textString
        }
    }
}

struct PowderOrangeButton:UIViewRepresentable {
    @Binding var textString:String
    @Binding var resultString:String
    func makeUIView(context: Context) -> UIButton {
        let control = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 44))
        control.setTitle("お礼する", for: .normal)
        control.setTitleColor(.orange, for: .normal)
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateInputString(sender:)), for: .touchUpInside)
        return control
    }
    func updateUIView(_ uiView: UIButton, context: Context) {
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator {
        var control: PowderOrangeButton
        init(_ control: PowderOrangeButton) {
            self.control = control
        }
        @objc func updateInputString(sender:UITextField) {
            if control.textString != "" {
                control.resultString = "「" + control.textString + "」" + " \r\nすごいですかそうですか良かったです。\r\n(粉みかん)"
            }
            else {
                control.resultString = "……。"
            }
        }
    }
}

struct screen16: View {
    @State var inputString:String = ""
    @State var targetString:String = ""
    @State var returnString:String = ""
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            HStack {
                TextField("何か一言いただけますか？", text: $inputString)
                Button(action: {
                    self.targetString = self.inputString
                }) {Text("答える")}
            }
            PowderOrangeLabel(textString: $targetString)
                .frame(height: 80)
            PowderOrangeButton(textString: $targetString, resultString: $returnString)
                .frame(height: 48)
            Text(self.returnString)
                .frame(height: 80)
            Spacer()
        }
        .padding(12.0)
    }
}

struct screen16_Previews: PreviewProvider {
    static var previews: some View {
        screen16()
    }
}
