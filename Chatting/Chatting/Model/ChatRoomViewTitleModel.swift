//
//  ChatRoomViewTitleModel.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ChatRoomViewTitleModel {
  
  let nameString: String
  let companyAndJobString: String
}

extension ChatRoomViewTitleModel {
  
  static let dummy: ChatRoomViewTitleModel = ChatRoomViewTitleModel(
    nameString: "상대방이름",
    companyAndJobString: "직업 @회사"
  )
}
