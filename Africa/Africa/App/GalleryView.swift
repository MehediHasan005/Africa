//
//  GalleryView.swift
//  Africa
//
//  Created by Mehedi Hasan on 25/11/22.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical ,showsIndicators: false ) {
            Text("Hello")
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
