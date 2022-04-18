//
//  ChatListView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ChatListView: View {
  
  let modelList: [ChatModel]
  
  var body: some View {
    ScrollView {
      VStack {
        ForEach(self.modelList) { chatModel in
          ChatView(model: chatModel)
            .padding(.top, 20)
        }
      }
      .padding(.horizontal, 20)
    }
  }
}
