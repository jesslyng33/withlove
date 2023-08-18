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
            if letterItems[index].color == "pink" {
                Color(red: 0.941, green: 0.897, blue: 0.923)
                    .ignoresSafeArea()
            } else if letterItems[index].color == "green" {
                Color(red: 0.816, green: 0.957, blue: 0.768)
                    .ignoresSafeArea()
            } else if letterItems[index].color == "blue" {
                Color(red: 0.752, green: 0.915, blue: 0.989)
                    .ignoresSafeArea()
            } else if letterItems[index].color == "yellow" {
                Color(red: 0.983, green: 0.988, blue: 0.604)
                    .ignoresSafeArea()
            } else if letterItems[index].color == "orange" {
                Color(red: 1.0, green: 0.853, blue: 0.703)
                    .ignoresSafeArea()
            } else if letterItems[index].color == "purple" {
                Color(red: 0.836, green: 0.831, blue: 0.896)
                    .ignoresSafeArea()
            }
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
                            .padding(.vertical, 10)
                            .frame(width: 350)
//                            .frame(width: 350, height: 550, alignment:.leading)
                            .multilineTextAlignment(.center)
                            .border(Color.gray, width : 1)
                            .background(Color(red: 0.996, green: 0.976, blue: 0.92))
                        Text("With Love, You")
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
