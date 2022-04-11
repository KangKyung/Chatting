//
//  ChatRoomListRowModel.swift
//  Chatting
//
//  Created by 강경 on 2022/04/11.
//

import Foundation

struct ChatRoomListRowModel {
  
  let nameString: String
  let companyAndJobString: String
  let dateString: String
  let recentMessageString: String
  let unreadMessagesCountString: String
}

extension ChatRoomListRowModel {
  
  static let dummy: ChatRoomListRowModel = ChatRoomListRowModel(
    nameString: "상대방이름",
    companyAndJobString: "직업 @회사",
    dateString: "날짜",
    recentMessageString: "가장 최신 메시지 미리보기텍스트...",
    unreadMessagesCountString: "84"
  )
}
