//
//  ButtonType.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

enum ButtonType {
  
  case close, send
  
  private var image: Image {
    switch self {
    case .close:
      return Image(systemName: "multiply")
    case .send:
      return Image(systemName: "paperplane.fill")
    }
  }
  private var size: CGFloat {
    switch self {
    case .close:
      return 12
    case .send:
      return 20
    }
  }
  
  var view: some View {
    return self.image
      .resizable()
      .frame(width: self.size, height: self.size)
      .padding(.leading, 20)
  }
}
