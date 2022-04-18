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
  
  private func closeView() {
    self.isViewAppear = false
  }
  
  var body: some View {
    VStack(spacing: 40) {
      NavigationBarView(
        titleString: self.titleModel.nameString,
        subTitleString: self.titleModel.companyAndJobString,
        leftButton: ImageButton(type: .close, clickEvent: self.closeView)
      )
      
      // TODO: ChatListView 구현
      VStack {
        Spacer()
      }
    }
  }
}
