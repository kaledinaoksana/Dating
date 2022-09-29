//
//  FontsView.swift
//  Dating
//
//  Created by Oksana Kaledina on 14.09.2022.
//

import SwiftUI

struct FontsView: View {
    let allFontNames = UIFont.familyNames
      .flatMap { UIFont.fontNames(forFamilyName: $0) }

    var body: some View {
      List(allFontNames, id: \.self) { name in
        Text(name)
          .font(Font.custom(name, size: 12))
      }
    }
}

struct FontsView_Previews: PreviewProvider {
    static var previews: some View {
        FontsView()
    }
}
