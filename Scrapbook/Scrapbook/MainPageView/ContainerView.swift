//
//  ContainerView.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        VStack(spacing: 30) {
            BookmarksView()
            BookmarksView()
        }
        
    }
}

struct BookmarksView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("iOS 개발")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.horizontal, 30)
                
                

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        NavigationLink(destination: WebView(urlToLoad: "https://www.youtube.com/")) {
                            VStack(alignment: .center, spacing: 0) {
                                Image("design_02")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .clipped()
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("개발 지침서 목록 모음")
                                            .font(.system(.title3, design: .rounded))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.bottom, 5)
                                        Text("iOS 개발을 위한 필수 덕목 10가지")
                                            .font(.system(.subheadline, design: .rounded))
                                            .fontWeight(.medium)
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(3)
                                    }
                                    .padding(10)
                                    Spacer(minLength: 0)
                                }
                                Spacer()

                            }
                            .frame(width: 280, height: 310)
                            .background(Color.white)
                            .cornerRadius(30)
                        }
                        
                        NavigationLink(destination: WebView(urlToLoad: "https://www.naver.com/")) {
                            VStack(alignment: .center, spacing: 0) {
                                Image("ios_01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .clipped()
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("좋은 개발자로 성장하기 위한 방법")
                                            .font(.system(.title3, design: .rounded))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.bottom, 5)
                                        Text("잘 설명할 수 없는 경험은 지원서에 없느니만 못하다는 것입니다.\n지원서에 작성한 내용은 당연히 질문 리스트에 포함이 되고, 충분한 답변을 기대하게 됩니다.\n그리고 질문하는 사람은 현업에서 상당한 경험을 쌓은 실력자들입니다.\n그러니 충분히 대답할 수 없는 것들, 자신이 크게 기여하지 않은 부분들은 적지 않는 것이 좋습니다.\n오히려 어떤 부분에서 어떤 역할을 했는지 뚜렷이 적는 것이 도움이 됩니다.")
                                            .font(.system(.subheadline, design: .rounded))
                                            .fontWeight(.medium)
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(3)
                                    }
                                    .padding(10)
                                    Spacer(minLength: 0)
                                }
                                Spacer(minLength: 0)
                            }
                            .frame(width: 280, height: 310)
                            .background(Color.white)
                            .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: WebView(urlToLoad: "https://www.google.com/")) {
                            VStack(alignment: .center, spacing: 0) {
                                Image("ios_03")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .clipped()
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("좋은 개발자로 성장하기 위한 방법")
                                            .font(.system(.title3, design: .rounded))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.bottom, 5)
                                        Text("잘 설명할 수 없는 경험은 지원서에 없느니만 못하다는 것입니다.\n지원서에 작성한 내용은 당연히 질문 리스트에 포함이 되고, 충분한 답변을 기대하게 됩니다.\n그리고 질문하는 사람은 현업에서 상당한 경험을 쌓은 실력자들입니다.\n그러니 충분히 대답할 수 없는 것들, 자신이 크게 기여하지 않은 부분들은 적지 않는 것이 좋습니다.\n오히려 어떤 부분에서 어떤 역할을 했는지 뚜렷이 적는 것이 도움이 됩니다.")
                                            .font(.system(.subheadline, design: .rounded))
                                            .fontWeight(.medium)
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(3)
                                    }
                                    .padding(10)
                                    Spacer(minLength: 0)
                                }
                                Spacer(minLength: 0)
                            }
                            .frame(width: 280, height: 300)
                            .background(Color.white)
                            .cornerRadius(30)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
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
