//
//  View+.swift
//  Chatting
//
//  Created by 강경 on 2022/04/18.
//

import SwiftUI

extension View {
  
  /// Hide or show the view based on a boolean value.
  ///
  /// Example for visibility:
  ///
  ///     Text("Label")
  ///         .isHidden(true)
  ///
  /// Example for complete removal:
  ///
  ///     Text("Label")
  ///         .isHidden(true, remove: true)
  ///
  /// - Parameters:
  ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
  ///   - remove: Boolean value indicating whether or not to remove the view.
  @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
    if hidden && !remove {
      self
        .frame(width: 0, height: 0)
        .hidden()
    } else {
      self
    }
  }
  /// TextEditor Placeholder
  func placeholder<Content: View>(
    when shouldShow: Bool,
    alignment: Alignment = .leading,
    @ViewBuilder placeholder: () -> Content
  ) -> some View {
    ZStack(alignment: alignment) {
      placeholder()
        .opacity(shouldShow ? 1 : 0)
        .zIndex(1)
        .padding(.leading, 6)
      
      self
    }
  }
}
