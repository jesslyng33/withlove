//
//  LetterTwoView.swift
//  withlove
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct LetterThreeView: View {
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
                        Text("you're facing burnout")
                            .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                            .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                            .multilineTextAlignment(.center)
                        Text("When burnout's weight feels heavy, remember you're not alone. Take a deep breath and step back – it's okay to pause. Reflect on your journey, celebrating small wins. Life's a marathon, not a sprint. Reconnect with your passions; let them guide you. Seek moments of stillness, letting go of the noise. Prioritize self-care; it's not selfish, it's necessary. Reach out to your support system; they're here to lift you. Visualize your goals, but embrace flexibility. Break tasks into smaller steps – progress, not perfection. Remember why you started; reignite that spark. Shift your focus from what's draining to what's inspiring. Nature heals – take walks, feel the sun. Journal your thoughts, untangling your mind. Say no when needed, setting boundaries. You're in control. This burnout is temporary; resilience is within you. Look back at your accomplishments – you're capable of overcoming this too. The world can wait while you heal.")
                        
                            .foregroundColor(Color(hue: 1.0, saturation: 0.442, brightness: 0.329))
                            .padding(.horizontal, 2.0)
                            .frame(width: 350, height: 500, alignment:.leading)
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

struct LetterThreeView_Previews: PreviewProvider {
    static var previews: some View {
        LetterTwoView()
    }
}
