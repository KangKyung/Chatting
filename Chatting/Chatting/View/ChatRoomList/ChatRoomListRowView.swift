//
//  ChatRoomListRowView.swift
//  Chatting
//
//  Created by 강경 on 2022/04/11.
//

import SwiftUI

struct ChatRoomListRowView: View {
  
  let model: ChatRoomListRowModel = .dummy
  
  var body: some View {
    HStack(spacing: 20) {
      VStack {
        Image.defaultPerson
          .resizable()
          .frame(width: 48, height: 48)
          .padding(.leading, 20)
        
        Spacer()
      }
      
      VStack(alignment: .leading, spacing: 5) {
        HStack {
          Text(self.model.nameString)
            .font(.title2)
          
          Spacer()
          
          Text(self.model.dateString)
            .foregroundColor(Color.customGray)
            .padding(.trailing, 20)
        }
        
        Text(self.model.companyAndJobString)
          .foregroundColor(Color.customGray)
        
        HStack {
          Text(self.model.recentMessageString)
          
          Spacer()
          
          Text(self.model.unreadMessagesCountString)
            .padding(5)
            .padding(.horizontal, 5)
            .background(Color.customRed)
            .foregroundColor(Color.customWhite)
            .cornerRadius(15)
            .padding(.trailing, 20)
        }

        HorizonDividerView()
          .padding(.vertical, 20)
      }
    }
  }
}
