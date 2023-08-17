//
//  WriteThirdView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteThirdView: View {
    @Binding var letterItems : [LetterItem]
    @Binding var index : Int
    var body: some View {
        NavigationStack() {
            ScrollView() {
                VStack() {
                    Text("Write your letter. . . ")
                    // for prompt
                    TextField("Open when. . . ", text: $letterItems[index].prompt)
                        .frame(width:300.0, height: 40.0)
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .border(Color.gray, width : 1)
                    // for content
                    TextEditor(text: $letterItems[index].content)
                        .frame(width: 350.0, height: 590.0, alignment: .topLeading).multilineTextAlignment(.leading).font(.title2).border(.secondary).border(Color.gray, width : 1)
                    // submission button
                    NavigationLink(destination: MyLettersView(letterItems: $letterItems, index: $index)) {
                        Text("Send to gallery")
                    }
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }
            .buttonStyle(.borderedProminent)
            .accentColor(.purple)
            .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        }
    }
}

struct WriteThirdView_Previews: PreviewProvider {
    static var previews: some View {
        WriteThirdView(letterItems: .constant([]), index: .constant(0))
    }
}
