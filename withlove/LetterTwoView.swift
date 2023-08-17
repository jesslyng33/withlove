//
//  LetterTwoView.swift
//  withlove
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct LetterTwoView: View {
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
                        Text("you need a burst of happiness")
                            .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                        Text("Life has its ups and downs, and during those moments when clouds seem to linger, remember that happiness can be found within your heart. Think of the simplest pleasures that bring a smile to your face: a warm hug, a favorite song, a cup of your preferred tea. Recall the moments of laughter shared with friends, the beauty of a sunset painting the sky in hues of orange and pink, or the feeling of accomplishment after overcoming a challenge. Close your eyes and take a deep breath. Picture all the positive experiences you've gathered throughout your life. Embrace the notion that happiness is not a constant state but a collection of these moments, waiting to be cherished.And when you read this letter, remember that happiness is like a gentle wave – it may ebb and flow, but it's always there, ready to wash over you when you least expect it. You have the power to create your happiness, to seek out the things that bring you joy.So, my dear, hold onto this letter as a reminder that happiness is never too far away. Embrace the small pleasures, create new memories, and know that you're deserving of all the happiness in the world")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                            .padding(.horizontal, 2.0)
                            .frame(width: 350, height: 600, alignment:.leading)
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

struct LetterTwoView_Previews: PreviewProvider {
    static var previews: some View {
        LetterTwoView()
    }
}
