//
//  ChatView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ChatView: View {
  
  let model: ChatModel
  
  var body: some View {
    HStack {
      HStack {
        Spacer()
        
        ChatDateView(textString: self.model.dateString)
          .foregroundColor(Color.gray)
      }
      .isHidden(self.model.type == .other)
      
      ChatBubbleView(type: self.model.type, textString: self.model.textString)
      
      HStack {
        ChatDateView(textString: self.model.dateString)
          .foregroundColor(Color.gray)
          .isHidden(self.model.type == .oneself)
        
        Spacer()
      }
      .isHidden(self.model.type == .oneself)
    }
  }
}
