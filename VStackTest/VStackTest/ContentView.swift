//
//  ContentView.swift
//  VStackTest
//
//  Created by 민성홍 on 2022/07/15.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = Date()

    var body: some View {
        VStack(alignment: .customCenter) {
            HStack(spacing: 5) {
                Text("홍길동")
                    .alignmentGuide(.customCenter) { context in
                      context[HorizontalAlignment.center]
                    }

               Text("(남)")
            }

            Text("18세")
                .frame(maxWidth: .infinity)
        }
    }
}

struct CustomCenter: AlignmentID {
  static func defaultValue(in context: ViewDimensions) -> CGFloat {
    context[HorizontalAlignment.center]
  }
}

extension HorizontalAlignment {
  static let customCenter: HorizontalAlignment = .init(CustomCenter.self)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
