//
//  VideoModel.swift
//  Africa
//
//  Created by Mehedi Hasan on 26/11/22.
//

import Foundation
import SwiftUI

struct Video: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
