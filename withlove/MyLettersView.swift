//
//  MyLettersView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct MyLettersView: View {
    @Binding var letterItems : [LetterItem]
    @Binding var index : Int
    var body: some View {
        VStack() {
            Text("My Letters")
            List {
                ForEach(letterItems) { LetterItem in
                    Text(LetterItem.color)
                    Text(LetterItem.prompt)
                    Text(LetterItem.content)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct MyLettersView_Previews: PreviewProvider {
    static var previews: some View {
        MyLettersView(letterItems: .constant([]), index: .constant(0))
    }
}
