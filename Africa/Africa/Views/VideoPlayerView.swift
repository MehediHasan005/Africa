//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Mehedi Hasan on 26/11/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoSelected, withExtension: "mp4")!)) {
                
            }
//            .overlay{
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32 , height: 32)
//                    .padding(.horizontal , 8)
//                ,alignment
//
//            }
            
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle , displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
