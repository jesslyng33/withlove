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
    @State var prompt = ""
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
                        Text("open when...")
                            .font(Font.custom("Starla", size: 50))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                        // for prompt
                        TextField("open when. . . ", text: $letterItems[index].prompt)
                            .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                            .border(Color.gray, width : 1)
                            .frame(width: 350)
                        //randomizer
                        HStack{
                                let randomPrompt = ["Open when you lose sense of who you are", "Open when you're feeling lonely", "Open when you are feeling unsure in life", "Open on your next birthday", "Open when you have a bad day", "Open when you need a smile", "Open when you need a boost of confidence"]
                                Button("generate random prompt"){
                                    let random = Int.random(in: 0..<7)
                                    prompt = randomPrompt[random]
                                }
                                .padding(20.0)
                                Text(prompt)
                              }
                        // for content
                        TextEditor(text: $letterItems[index].content)/*.font(Font.custom("Sansilk", size : 30))*/
                            .frame(width: 350.0, height: 590.0, alignment: .topLeading).multilineTextAlignment(.leading).font(.title2).border(.secondary).border(Color.gray, width : 1)
                            
                        // submission button
                        NavigationLink(destination: MyLettersView(letterItems: $letterItems, index: $index)) {
                            Text("Send to gallery")
                            
                        }
                    }
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)    .buttonStyle(.borderedProminent)
                                                     .accentColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                                                     .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                }
            
            }
        }
    }
}

struct WriteThirdView_Previews: PreviewProvider {
    static var previews: some View {
        WriteThirdView(letterItems: .constant([]), index: .constant(0))
    }
}
