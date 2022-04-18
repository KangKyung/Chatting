//
//  ChatModel.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import Foundation

struct ChatModel {
  
  let type: ChatType
  let textString: String
  let dateString: String
}

extension ChatModel: Identifiable {
  
  var id: UUID {
    return UUID()
  }
}

extension ChatModel {
  
  static let dummys: [ChatModel] = [
    ChatModel(type: .other, textString: "안녕하세요.", dateString: "오전 10:23"),
    ChatModel(type: .oneself, textString: "아 죄송해요, 이제야 메시지를 봤습니다. 저도 반가웠습니다! 어떤 부탁인가요?", dateString: "오전 10:23"),
    ChatModel(type: .other, textString: "안녕하세요. 홍로켓님 잘지내셨나요? 일전에 UX세미나에서 반가웠습니다. 다름이 아니라 부탁드릴것이 있어서 이렇게 연락드립니다.", dateString: "오전 10:23")
  ]
}
