//
//  File.swift
//  IgniteStarter
//
//  Created by Amelia Shekikhacheva on 1/4/26.
//

import Foundation
import Ignite

struct DataStorage {
    let cons: [Connection] = [
        Connection(id: 0, text: "GitHub", link: "https://github.com/ameliashe", color: Color(hex: "#104C35")),
        Connection(id: 1, text: "Instagram", link: "https://www.instagram.com/elllle_rom/", color: .indianRed)
    ]
    
    
    let projects: [Project] = [
        Project(logoImage: "images/Portfolio.png", title: "Portfolio Website", description: """
            Personal portfolio website built fully in Swift using Ignite. Includes a project showcase, social links, and a dark-first design.
            """, stack: ["Swift", "Ignite"], link: "https://github.com/ameliashe/Portfolio", screenshot: "", isAppStore: false),
        
        Project(logoImage: "images/MyHab.png", title: "MyHabits", description: """
            Lightweight habit-tracking app with local persistence, an intuitive UI, and clear visual progress.
            """, stack: ["Swift", "UIKit", "Auto Layout", "UserDefaults"], link: "https://github.com/ameliashe/MyHabits", screenshot: "", isAppStore: false),
        
        Project(logoImage: "images/Social.png", title: "SocialNetworkApp", description:
            """
            Social networking app powered by Firebase: sign up/login, create posts, browse a feed, and customize profiles.
            """, stack: ["Swift", "UIKit", "Auto Layout", "Firebase Firestore", "Firebase Authentication", "Keychain"], link: "https://github.com/ameliashe/SocialNetworkApp", screenshot: "", isAppStore: false),
        
        Project(logoImage: "images/Delta.png", title: "DeltaClock", description: """
            World clock with a timeline-based UI for comparing multiple cities’ time zones at a glance. Build plans across time zones, instantly see overlaps, and set smart reminders/alarms — with widgets and customizable themes ranging from Liquid Glass to Neumorphic and Retro.
            """, stack: ["Swift", "SwiftUI", "SwiftData", "AdMob", "RevenueCat"], link: "", screenshot: "", isAppStore: true)
    ]
}
