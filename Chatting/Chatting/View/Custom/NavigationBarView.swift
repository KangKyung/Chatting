//
//  NavigationBarView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/11.
//

import SwiftUI

struct NavigationBarView: View {
  
  let titleString: String
  let subTitleString: String?
  let leftButton: ImageButton?
  let rightButton: ImageButton?
  
  init(
    titleString: String,
    subTitleString: String? = nil,
    leftButton: ImageButton? = nil,
    rightButton: ImageButton? = nil
  ) {
    self.titleString = titleString
    self.subTitleString = subTitleString
    self.leftButton = leftButton
    self.rightButton = rightButton
  }
  
  var body: some View {
    ZStack {
      VStack {
        Text(self.titleString)
          .font(.title2)
        
        if let subTitleString = self.subTitleString {
          Text(subTitleString)
            .foregroundColor(Color.customGray)
        }
      }
      
      HStack {
        self.leftButton
        
        Spacer()
        
        self.rightButton
      }
    }
  }
}
