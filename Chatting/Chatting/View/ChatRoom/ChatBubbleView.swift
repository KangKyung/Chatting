//
//  ChatBubbleView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ChatBubbleView: View {
  
  let type: ChatType
  let textString: String
  
  var body: some View {
    Text(self.textString)
      .padding(10)
      .background(self.type.bubbleColor)
      .foregroundColor(self.type.textColor)
      .cornerRadius(10)
  }
}
