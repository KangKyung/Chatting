//
//  ChatDateView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ChatDateView: View {
  
  let textString: String
  
  var body: some View {
    VStack {
      // MARK: View 간격 처리
      // Spacer()와 .padding(.bottom, 10)를 이용하여
      // ChatBubbleView의 아래 부분에 위치하도록 처리함
      Spacer()
      
      Text(self.textString)
        .foregroundColor(Color.gray)
        .padding(.bottom, 10)
    }
  }
}
