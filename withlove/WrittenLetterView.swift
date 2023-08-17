//
//  WrittenLetterView.swift
//  withlove
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct WrittenLetterView: View {
    @Binding var letterItems : [LetterItem]
    @Binding var index : Int
    var body: some View {
        ZStack() {
            Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                .ignoresSafeArea()
            NavigationStack() {
                ScrollView() {
                    VStack() {
                        HStack() {
                            Spacer()
                            NavigationLink(destination: ContentView()) {
                                VStack(alignment: .center) {
                                    Image("homeheart")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.trailing, 20.0)
                                        .frame(width: 60)
                                    Text("home")
                                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                        .padding(.trailing, 20.0)
                                        .font(Font.custom("Starla", size: 17))
                                }
                            }
                        }
                        Text("open when. . .")
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .font(Font.custom("Starla", size: 50))
                        Text(letterItems[index].prompt)
                            .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                        Text(letterItems[index].content)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                            .padding(.horizontal, 2.0)
                            .frame(width: 350, height: 550, alignment:.leading)
                            .multilineTextAlignment(.center)
                            .border(Color.gray, width : 1)
                            .background(Color(red: 0.996, green: 0.976, blue: 0.92))
                        Text("With Love, Us")
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .font(Font.custom("Dufanthe", size: 40))
                        Spacer()
                    }
                }
            }
        }
    }
}

struct WrittenLetterView_Previews: PreviewProvider {
    static var previews: some View {
        WrittenLetterView(letterItems: .constant([]), index: .constant(0))
    }
}
