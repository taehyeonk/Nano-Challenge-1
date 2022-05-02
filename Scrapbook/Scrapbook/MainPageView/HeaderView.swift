//
//  HeaderView.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Logo")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(ColorManager.mainColor)
                
            }
            Spacer()
            Image("profile")
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
                .shadow(color: ColorManager.mainColor, radius: 2)
        }
        .padding(.horizontal, 30)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.systemGray6).edgesIgnoringSafeArea(.all)
            HeaderView()
        }
    }
}
