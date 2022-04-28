//
//  ContentView.swift
//  Scrapbook
//
//  Created by Admin on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack{
                NavigationLink(destination: WebView(urlToLoad: "https://seons-dev.tistory.com/")) {
                    Text("서근 블로그")
                        .edgesIgnoringSafeArea(.all)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.black)
                        .cornerRadius(20, antialiased: true)
                }
                NavigationLink(destination: WebView(urlToLoad: "https://www.google.com")) {
                    Text("구글")
                        .edgesIgnoringSafeArea(.all)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20, antialiased: true)
                }
                NavigationLink(destination: WebView(urlToLoad: "https://www.youtube.com")) {
                    Text("유튜브")
                        .edgesIgnoringSafeArea(.all)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(20, antialiased: true)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
