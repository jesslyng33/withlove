//
//  LetterOneView.swift
//  withlove
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct LetterOneView: View {
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
                        Text("you need to make a big decision")
                            .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                        Text("Hey there I know that making significant decisions can be tough, but remember, you've got this! Take a deep breath and give yourself some time to reflect. Consider the options before you, weighing the pros and cons. Trust your instincts and envision the outcome you truly desire. Don't rush; give yourself the gift of patience. Seek advice from those you trust, and don't be afraid to ask for help. Remember, it's okay to be uncertain; uncertainty often leads to growth. Imagine yourself in the future looking back. Which choice aligns with your long-term goals and values? Visualize the journey each decision might take you on and embrace the challenges that come with it. Decisions might seem daunting, but they're also opportunities for growth and change. No matter what, believe in yourself and your ability to handle whatever comes your way. Embrace the uncertainty with confidence, and remember that each choice shapes your unique story. You're strong, capable, and resilient. Trust yourself, and step forward with courage.")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                            .padding(.horizontal, 2.0)
                            .frame(width: 350, height: 550, alignment:.leading)
                            .multilineTextAlignment(.center)
                            .border(Color.gray, width : 1)
                            .background(Color(red: 0.996, green: 0.976, blue: 0.92))
                        Text("With Love, Us")
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .font(Font.custom("Dufanthe", size: 40))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct LetterOneView_Previews: PreviewProvider {
    static var previews: some View {
        LetterOneView()
    }
}
