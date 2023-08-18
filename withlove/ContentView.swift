//
//  ContentView.swift
//  withlove
//
//  Created by scholar on 8/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var letterItems: [LetterItem] = []
    @State var index = 0
    var body: some View {
        NavigationStack() {
            ZStack {
                Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                    .ignoresSafeArea()
                VStack {
                    HStack() {
                        Spacer()
                        NavigationLink(destination: AboutUsView()) {
                            VStack(alignment: .center) {
                                Image("aboutusheart")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 20.0)
                                    .frame(width: 60)
                                Text("about us")
                                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                    .padding(.trailing, 20.0)
                                    .font(Font.custom("Starla", size: 23))
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 70)
                    Image("titletransparent")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 40.0)
                    HStack() {
                        NavigationLink(destination: ReadView()) {
                            VStack() {
                                Image("pinkletter")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0)
                                Text("read")
                                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                    .font(Font.custom("Starla", size: 25))
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: WriteView(letterItems: $letterItems, index: $index)) {
                            VStack() {
                                Image("pinkletter")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0)
                                Text("write")
                                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                    .font(Font.custom("Starla", size: 25))
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            self.addLetter(color: "", prompt: "", content: "", font: "")
                            if index != 0 {
                                index = index+1
                            }
                        })
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    NavigationLink(destination: MyLettersView(letterItems: $letterItems, index: $index)) {
                        VStack() {
                            Image("pinkletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0)
                            Text("my letters")
                                .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                .font(Font.custom("Starla", size: 25))
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 70)
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
    private func addLetter(color: String, prompt: String, content: String, font: String) {
        let letter = LetterItem(color: color, prompt: prompt, content: content, font: font)
            letterItems.append(letter)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
