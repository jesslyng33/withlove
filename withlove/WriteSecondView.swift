//
//  WriteSecondView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteSecondView: View {
    @Binding var letterItems : [LetterItem]
    @Binding var index : Int
    var body: some View {
        NavigationStack() {
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
                VStack() {
                    // main title, seen on the very top
                    Text("customize your letter font!")
                        .font(Font.custom("Starla", size: 40))
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer();
                    // setting the placement for images (That are letters)
                    HStack() {
                        // letters link to WriteSecondView page
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // pink
                            Text("ABC")
                                .font(Font .custom("Dufanthe", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "dufanthe"
                        })
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // green
                            Text("ABC")
                                .font(Font .custom("Farmhouse Children", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                                .padding(.leading, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "farmhouse children"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // blue
                            Text("ABC")
                                .font(Font .custom("Sansilk", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "sansilk"
                        })
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // yellow
                            Text("ABC")
                                .font(Font .custom("Stefiont-Regular", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                                .padding(.leading, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "stefiont-regular"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // orange
                            Text("ABC")
                                .font(Font .custom("Curlings", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "curlings"
                        })
                        NavigationLink(destination: WriteThirdView(letterItems: $letterItems, index: $index)) {
                            // purple
                            Text("ABC")
                                .font(Font .custom("Starla", size: 60))
                                .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 40)
                                .padding(.leading, 40)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            letterItems[index].font = "starla"
                        })
                  }
                  Spacer()
                }
            }
        }
    }
}

struct WriteSecondView_Previews: PreviewProvider {
    static var previews: some View {
        WriteSecondView(letterItems: .constant([]), index: .constant(0))
    }
}
