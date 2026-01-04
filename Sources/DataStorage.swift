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
        Connection(text: "GitHub", link: "https://github.com/ameliashe", color: Color(hex: "#104C35")),
		Connection(text: "LinkedIn", link: "https://www.linkedin.com/in/ameliashe/", color: .royalBlue),
        Connection(text: "Instagram", link: "https://www.instagram.com/elllle_rom/", color: .indianRed),
		Connection(text: "Email", link: "mailto:amelia@ameliashe.com", color: .tan)
    ]
    
	
	let projects: [Project] = [
		Project(logoImage: "images/Portfolio.png", title: "Portfolio Website", description:
			"""
			Personal portfolio website built fully in Swift using Ignite. Includes a project showcase, social links, CV and a modern minimalistic design.
			""", stack: ["Swift", "Ignite"], link: "https://github.com/ameliashe/Portfolio", screenshot: "", hosting: .github),
		
		Project(logoImage: "images/Coffee.png", title: "CoffeeLog", description:
			"""
			Modern coffee recipe and intake tracking application with custom steps UI (inspired by Apple Music's lyrics view), charts and UI customization options.
			""", stack: ["Swift", "SwiftUI", "Swift Data", "Swift Charts", "URLSession"], link: "https://github.com/ameliashe/KnowledgeBaseSwiftUI", screenshot: "", hosting: .github),
		
		Project(logoImage: "images/MyHab.png", title: "MyHabits", description:
			"""
			Lightweight habit-tracking app with local persistent storage, an intuitive UI, and clear visual progress.
			""", stack: ["Swift", "UIKit", "Auto Layout", "UserDefaults"], link: "https://github.com/ameliashe/MyHabits", screenshot: "", hosting: .github),
		
        Project(logoImage: "images/Social.png", title: "SocialNetworkApp", description:
            """
			Social networking app powered by Firebase: sign up/login, create posts, browse a feed, and customize profiles.
			""", stack: ["Swift", "UIKit", "Auto Layout", "Firebase Firestore", "Firebase Auth", "Keychain"], link: "https://github.com/ameliashe/SocialNetworkApp", screenshot: "", hosting: .github),
        
        Project(logoImage: "images/Delta.png", title: "DeltaClock", description:
			"""
			World clock with a timeline-based UI for comparing multiple cities’ time zones at a glance. Build plans across time zones, instantly see overlaps, and set smart reminders/alarms — with widgets and customizable themes ranging from Liquid Glass to Neumorphic and Retro.
			""", stack: ["Swift", "SwiftUI", "Swift Data", "AdMob", "RevenueCat"], link: "", screenshot: "", hosting: .none)
    ]
}
