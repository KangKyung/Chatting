//
//  ChatType.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

enum ChatType {
  
  case oneself, other
}

extension ChatType {
  
  var textColor: Color {
    switch self {
    case .oneself:
      return Color.white
    case .other:
      return Color.black
    }
  }
  var bubbleColor: Color {
    switch self {
    case .oneself:
      return Color.blue
    case .other:
      return Color.gray
    }
  }
}
