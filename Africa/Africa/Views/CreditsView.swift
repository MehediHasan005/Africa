//
//  CreditsView.swift
//  Africa
//
//  Created by Mehedi Hasan on 26/11/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
            Text("""
    Copyright Md. Mehedi Hasan
    All right reserved
    Better Apps ❤︎ Less Code

    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
