//
//  MainPageView.swift
//  Scrapbook
//
//  Created by Admin on 2022/04/28.
//

import SwiftUI

struct ColorManager {
    static let mainColor = Color(.systemCyan)
}

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
                            VStack {
                                Image("ios_01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                VStack(alignment: .leading) {
                                    Text("개발 지침서 목록 모음")
                                        .font(.system(.title3, design: .rounded))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .padding(.horizontal, 10)
                                    Text("iOS 개발을 위해서 꼭 알아야 할 필수 덕목 10가지 가나다라마바사 아자차카타파하 아러니ㅏㅇ러미나어리망너리망너림아너림ㄴ아ㅓ림ㄴ아ㅓ림ㄴ아러ㅣㅁㄴ아ㅓ린아러민아러미낭러")
                                        .font(.system(.subheadline, design: .rounded))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .padding(5)
                                        .padding(.horizontal, 10)
                                        .padding(.bottom, 10)
                                }
                                .frame(height: 100)
                            }
                            .frame(width: 280, height: 320)
                            .background(Color.white)
                            .cornerRadius(30)
                        }
                        
                        NavigationLink(destination: WebView(urlToLoad: "https://www.naver.com/")) {
                            VStack {
                                Image("ios_02")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                VStack(alignment: .leading) {
                                    Text("좋은 개발자로 성장하기 위한 방법")
                                        .font(.system(.title3, design: .rounded))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .padding(.horizontal, 10)
                                    Text("잘 설명할 수 없는 경험은 지원서에 없느니만 못하다는 것입니다.\n지원서에 작성한 내용은 당연히 질문 리스트에 포함이 되고, 충분한 답변을 기대하게 됩니다.\n그리고 질문하는 사람은 현업에서 상당한 경험을 쌓은 실력자들입니다.\n그러니 충분히 대답할 수 없는 것들, 자신이 크게 기여하지 않은 부분들은 적지 않는 것이 좋습니다.\n오히려 어떤 부분에서 어떤 역할을 했는지 뚜렷이 적는 것이 도움이 됩니다.")
                                        .font(.system(.subheadline, design: .rounded))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .padding(.top, 5)
                                        .padding(.leading, 10)
                                        .padding(.bottom, 15)
                                }
                                .frame(height: 100)
                            }
                            .frame(width: 280, height: 320)
                            .background(Color.white)
                            .cornerRadius(30)
                        }
                        
                        NavigationLink(destination: WebView(urlToLoad: "https://www.google.com/")) {
                            VStack {
                                Image("ios_03")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                VStack(alignment: .leading) {
                                    Text("좋은 개발자로 성장하기 위한 방법")
                                        .font(.system(.title3, design: .rounded))
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .padding(.horizontal, 10)
                                    Text("잘 설명할 수 없는 경험은 지원서에 없느니만 못하다는 것입니다.\n지원서에 작성한 내용은 당연히 질문 리스트에 포함이 되고, 충분한 답변을 기대하게 됩니다.\n그리고 질문하는 사람은 현업에서 상당한 경험을 쌓은 실력자들입니다.\n그러니 충분히 대답할 수 없는 것들, 자신이 크게 기여하지 않은 부분들은 적지 않는 것이 좋습니다.\n오히려 어떤 부분에서 어떤 역할을 했는지 뚜렷이 적는 것이 도움이 됩니다.")
                                        .font(.system(.subheadline, design: .rounded))
                                        .fontWeight(.medium)
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .padding(.top, 5)
                                        .padding(.leading, 10)
                                        .padding(.bottom, 15)
                                }
                                .frame(height: 100)
                            }
                            .frame(width: 280, height: 320)
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

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
