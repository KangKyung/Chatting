//
//  WritingMessageView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct WritingMessageView: View {
  
  @State private var messageTextString: String = ""
  
  var body: some View {
    VStack {
      HorizonDividerView()
      
      HStack(spacing: 0) {
        TextEditor(text: self.$messageTextString)
          .placeholder(when: self.messageTextString.isEmpty) {
            Text(TextString.messagePlaceholder)
              .foregroundColor(Color.customGray)
          }
        
        ButtonType.send.view
          .padding(.trailing, 20)
          .onTapGesture {
            // TODO: send message
            self.messageTextString = ""
          }
      }
      .frame(height: 30)
      .padding(10)
    }
  }
}
