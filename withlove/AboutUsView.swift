//
//  AboutUsView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ZStack {
            Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                .ignoresSafeArea()
            ScrollView() {
                // insert the home page navigation link here lol
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
                VStack {
                    // feel free to change the title of the page
                    Text("💌 with love, the team 💌")
                        .font(Font.custom("Starla", size: 30))
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                        .multilineTextAlignment(.center)
                    //Vstack for all of our pictures and name caption
                            Image("jesslyn")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                        Text("Jesslyn").font(Font.custom("Dufanthe", size: 50))
                        .foregroundColor(Color(hue: 0.002, saturation: 0.419, brightness: 0.771))
                        }
                        Image("christine")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Text("Christine")
                    .font(Font.custom("Dufanthe", size: 50))
                    .foregroundColor(Color(hue: 0.002, saturation: 0.419, brightness: 0.771))
                
                        Image("jianna")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        .padding(.all)
                
                        Text("Jianna")
                    .font(Font.custom("Dufanthe", size: 50))
                    .foregroundColor(Color(hue: 0.002, saturation: 0.419, brightness: 0.771))
                    }
                    Spacer()
                        .padding(.all)
                    .navigationBarBackButtonHidden(true)
                    //this will be where we enter the big ass paragraph about the inspo and other team related info will pop up under the button
            }
        Spacer()
            }
        }
struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
