//
//  ImageButton.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

struct ImageButton: View {
  
  let type: ButtonType
  let clickEvent: () -> Void
  
  var body: some View {
    self.type.view
      .onTapGesture {
        self.clickEvent()
      }
  }
}
