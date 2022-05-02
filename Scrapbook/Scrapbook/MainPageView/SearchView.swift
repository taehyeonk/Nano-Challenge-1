//
//  SearchView.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI

struct SearchView: View {
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .foregroundColor(.gray)
                .font(.system(.subheadline, design: .rounded))
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(.title2, design: .rounded))
                .foregroundColor(ColorManager.mainColor)
                .padding(.trailing, 20)
        }
        .frame(width: 350, height: 54)
        .background(Color.white)
        .cornerRadius(14)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.systemGray6).edgesIgnoringSafeArea(.all)
            SearchView(text: .constant(""))
        }
    }
}
