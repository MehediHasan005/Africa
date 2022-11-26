//
//  CenterModifier.swift
//  Africa
//
//  Created by Mehedi Hasan on 26/11/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
