//
//  CartegoryView.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack() {
                // iOS 개발
                VStack {
                    VStack {
                        Image("apple")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.white)
//                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(ColorManager.mainColor)
//                    .background(.white)
                    .cornerRadius(10)
                    Text("iOS 개발")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(ColorManager.mainColor)
//                        .foregroundColor(.gray)
                }
                // 인공지능
                VStack {
                    VStack {
                        Image("ai")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .cornerRadius(10)
                    Text("인공지능")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                // 알고리즘
                VStack {
                    VStack {
                        Image("algorithms")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .cornerRadius(10)
                    Text("알고리즘")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                // 디자인
                VStack {
                    VStack {
                        Image("paint")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .cornerRadius(10)
                    Text("디자인")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                // 자전거
                VStack {
                    VStack {
                        Image("bike")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .cornerRadius(10)
                    Text("자전거")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                // --- Test를 위한 추가 start ---
                VStack {
                    VStack {
                        Image("ai")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.gray)
                            .frame(width: 36, height: 36)
                    }
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .cornerRadius(10)
                    Text("머신러닝")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                // --- Test를 위한 추가 end ---
            }
            .padding(.horizontal, 20)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.systemGray6).edgesIgnoringSafeArea(.all)
            CategoryView()
        }
    }
}
