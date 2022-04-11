//
//  ChatRoomListView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/11.
//

import SwiftUI

struct ChatRoomListView: View {
  
  @State private var isRowClicked: Bool = false
  
  var body: some View {
    VStack {
      NavigationBarView(titleString: TextString.chatRoomListTitle)
        .padding(20)
      
      ScrollView {
        VStack(spacing: 5) {
          ForEach(1..<50) { _ in
            ChatRoomListRowView()
              .onTapGesture {
                self.isRowClicked = true
              }
          }
        }
      }
    }
    .fullScreenCover(
      isPresented: self.$isRowClicked,
      content: {
        // TODO: ChatRoomView 인스턴스 생성
        EmptyView()
      }
    )
  }
}
