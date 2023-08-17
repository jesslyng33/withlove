//
// ReadView.swift
// withlove
//
// Created by scholar on 8/15/23.
//
import SwiftUI

struct ReadView: View {
    var body: some View {
        ZStack() {
            Color(hue: 1.0, saturation: 0.034, brightness: 0.974)
                .ignoresSafeArea()
            //navigation stack for multiple open when letters
            NavigationStack{
                //title
                ScrollView {
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
                    Text("read")
                        .font(Font.custom("Starla", size: 50))
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                        .multilineTextAlignment(.center)
                    Text("pre-written letters!")
                        .font(Font.custom("NeverMindHandwriting-Regular", size: 20))
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                        .multilineTextAlignment(.center)
                    //the vstack is inside the scroll view so that its able to scroll
                    VStack {
                        //each navigation link will take you to the page that is desginated for the pre written letter
                        NavigationLink(destination: LetterOneView()) {
                            Image("pinkletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            .padding(.all)}
                        NavigationLink(destination: LetterTwoView()) {
                            Image("pinkletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            .padding(.all)}
                        NavigationLink(destination: LetterThreeView()) {
                            Image("pinkletter")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            .padding(.all)}
                    }
                }
            }
        }
    }
}

struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
