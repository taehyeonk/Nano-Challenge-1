//
//  ContainerView.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(categories, id: \.id) {category in
                BookmarksView(cateogry: category)
            }
        }
    }
}

struct BookmarksView: View {
    var cateogry: Category
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(cateogry.name)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 30)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(cateogry.bookmarks, id: \.id) { bookmark in
                        NavigationLink(destination: WebView(urlToLoad: bookmark.url)) {
                            VStack(alignment: .center, spacing: 0) {
                                bookmark.image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .clipped()
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(bookmark.title)
                                            .font(.system(.title3, design: .rounded))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.bottom, 5)
                                            .lineLimit(1)
                                        Text(bookmark.description)
                                            .font(.system(.subheadline, design: .rounded))
                                            .fontWeight(.medium)
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(2)
                                    }
                                    .padding(10)
                                    Spacer(minLength: 0)
                                }
                                Spacer(minLength: 0)
                            }
                            .frame(width: 280, height: 300)
                            .background(Color.white)
                            .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.systemGray6).edgesIgnoringSafeArea(.all)
            ContainerView()
        }
    }
}
