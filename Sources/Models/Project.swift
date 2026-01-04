//
//  File.swift
//  IgniteStarter
//
//  Created by Amelia Shekikhacheva on 1/4/26.
//

import Foundation

enum Hosting: CaseIterable {
	case github
	case appstore
	case none
}

struct Project {
    let logoImage: String
    let title: String
    let description: String
    let stack: [String]
    let link: String
    let screenshot: String
    let hosting: Hosting
}
