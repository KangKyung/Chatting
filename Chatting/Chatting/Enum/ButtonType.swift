//
//  ButtonType.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

enum ButtonType {
  
  case close
  
  private var image: Image {
    switch self {
    case .close:
      return Image(systemName: "multiply")
    }
  }
  
  var view: some View {
    return self.image
      .resizable()
      .frame(width: 12, height: 12)
      .padding(.leading, 20)
  }
}
