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
                ForEach(categorys, id: \.self) { category in
                    VStack {
                        VStack {
                            category.categoryImage
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
                        Text(category.name)
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(ColorManager.mainColor)
    //                        .foregroundColor(.gray)
                    }
                }
                // --- Test를 위한 추가 start ---
                ForEach(categorys) { category in
                    VStack {
                        VStack {
                            category.categoryImage
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                                .frame(width: 36, height: 36)
                        }
                        .frame(width: 60, height: 60)
                        .background(.white)
                        .cornerRadius(10)
                        Text(category.name)
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
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
