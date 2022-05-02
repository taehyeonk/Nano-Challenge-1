//
//  MainPageView.swift
//  Scrapbook
//
//  Created by Admin on 2022/04/28.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ZStack {
                    Color(.systemGray6).edgesIgnoringSafeArea(.all)
                    VStack {
                        HeaderView()
                        SearchView(text: .constant(""))
                        CategoryView()
                            .padding(.vertical, 10)
                        ContainerView()
                            .padding(.vertical, 10)
                    }
                }
            }
            .navigationBarHidden(true)
            .background(Color(.systemGray6))
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
