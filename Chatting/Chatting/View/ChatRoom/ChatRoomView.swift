//
//  ChatRoomView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/14.
//

import SwiftUI

struct ChatRoomView: View {
  
  @Binding var isViewAppear: Bool
  let titleModel: ChatRoomListRowModel = .dummy
  let chatModels: [ChatModel] = ChatModel.dummys
  
  private func closeView() {
    self.isViewAppear = false
  }
  
  var body: some View {
    VStack {
      NavigationBarView(
        titleString: self.titleModel.nameString,
        subTitleString: self.titleModel.companyAndJobString,
        leftButton: ImageButton(type: .close, clickEvent: self.closeView)
      )
      
      ChatListView(modelList: self.chatModels)
      
      WritingMessageView()
    }
  }
}
