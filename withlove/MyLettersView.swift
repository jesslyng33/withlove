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
        ZStack() {
            Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                .ignoresSafeArea()
            VStack() {
                Text("My Letters")
                    .font(Font.custom("Starla", size: 50))
                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                    .multilineTextAlignment(.center)
                List {
                    ForEach(letterItems) { LetterItem in
                        NavigationLink(destination: WrittenLetterView(letterItems: $letterItems, index: $index)) {
                            VStack() {
                                Image("\(letterItems[index].color)letter")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                Text(letterItems[index].prompt)
                                    .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MyLettersView_Previews: PreviewProvider {
    static var previews: some View {
        MyLettersView(letterItems: .constant([]), index: .constant(0))
    }
}
