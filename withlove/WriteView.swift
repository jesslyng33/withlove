//
//  WriteView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteView: View {
    @Binding var letterItems : [LetterItem]
    @Binding var index : Int
    var body: some View {
        NavigationStack() {
            ZStack() {
                Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                    .ignoresSafeArea()
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
                    // main title, seen on the very top
                    Text("customize your letter color!")
                        .font(Font.custom("Starla", size: 40))
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer();
                    // setting the placement for images (That are letters)
                    HStack() {
                        // letters link to WriteSecondView page
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // pink
                            Image("pinkletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.vertical, 40.0)
                                .frame(width: 150.0)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "pink"
                        })
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // green
                            Image("greenletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0)
                                .padding(.vertical, 40.0)
                                .padding(.leading, 20)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "green"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // blue
                            Image("blueletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0)
                                .padding(.vertical, 40.0)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "blue"
                        })
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // yellow
                            Image("yellowletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0)
                                .padding(.vertical, 40.0)
                                .padding(.leading, 20)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "yellow"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // orange
                            Image("orangeletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0)
                                .padding(.vertical, 40.0)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "orange"
                        })
                        NavigationLink(destination: WriteSecondView(letterItems: $letterItems, index: $index)) {
                            // purple
                            Image("purpleletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0)
                                .padding(.vertical, 40.0)
                                .padding(.leading, 20)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].color = "purple"
                        })
                  }
                  Spacer()
                }
            }
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView(letterItems: .constant([]), index: .constant(0))
    }
}
