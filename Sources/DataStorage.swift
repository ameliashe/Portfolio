//
//  File.swift
//  IgniteStarter
//
//  Created by Amelia Shekikhacheva on 1/4/26.
//

import Foundation
import Ignite

struct DataStorage {
	var profileDescription: String {
		"""
		Hi, I’m Amelia — an iOS & macOS developer.

		I build thoughtful, performance-minded apps in **Swift** using **SwiftUI** and **UIKit**. I enjoy clean architecture (MVVM), data modeling and persistence (**Core Data / SwiftData**), and turning complex logic into calm, readable UI.

		Also I work as a **video editor & motion designer** in esports/media production. This background shaped how I approach products: strong visual taste, clear storytelling, and an eye for detail. I also hold a bachelor’s degree in **Economics & Management** (UNE​CON, Saint Petersburg) and completed a postgraduate program in film editing at **Industry** film school.

		If you’d like to chat about collaboration or roles, feel free to reach out.
		"""
	}
	
	let cons: [Connection] = [
		Connection(text: "GitHub", link: "https://github.com/ameliashe", color: Color(hex: "#104C35")),
		Connection(text: "LinkedIn", link: "https://www.linkedin.com/in/ameliashe/", color: .royalBlue),
		Connection(text: "Instagram", link: "https://www.instagram.com/elllle_rom/", color: .indianRed),
		Connection(text: "Email", link: "mailto:amelia@ameliashe.com", color: .tan)
	]
	
	
	let projects: [Project] = [
		Project(logoImage: "images/Portfolio.png", title: "Portfolio Website", description:
			"""
			Personal portfolio website built fully in Swift using Ignite. Includes a project showcase, information about me and social links, wrapped in a modern minimalistic design.
			""", stack: ["Swift", "Ignite"], link: "https://github.com/ameliashe/Portfolio", screenshot: "", hosting: .github),
				
		Project(logoImage: "images/MyHab.png", title: "MyHabits", description:
			"""
			Habit-tracking app designed to encourage consistency through visuals such as a daily progress bar and assigning colors to habits. Developed in UIKit (MVC) and uses UserDefaults for storage.
			""", stack: ["Swift", "UIKit", "Auto Layout", "UserDefaults"], link: "https://github.com/ameliashe/MyHabits", screenshot: "", hosting: .github),
		
		Project(logoImage: "images/Coffee.png", title: "CoffeeLog", description:
			 """
			 Lightweight knowledge base and recipe app with a custom UI reminiscent of the Apple Music lyrics view, with a diary functionality for coffee enthusiasts. Built in SwiftUI on MVVM architecture, implementing network calls via URLSession and modern concurrency. The diary uses SwiftData for storage and SwiftCharts for visualization.
			 """, stack: ["Swift", "SwiftUI", "Swift Data", "Swift Charts", "URLSession"], link: "https://github.com/ameliashe/KnowledgeBaseSwiftUI", screenshot: "", hosting: .github),
		
		Project(logoImage: "images/Social.png", title: "SocialNetworkApp", description:
			"""
			Social networking application featuring a feed, customizable user profiles, and post creation. Built in UIKit using MVC+C, with CoreData for offline caching and Firebase Firestore + Auth as the backend. Implemented asynchronous data and image loading, secure authentication, and provided unit tests.
			""", stack: ["Swift", "UIKit", "Auto Layout", "Firebase Firestore", "Firebase Auth", "Keychain"], link: "https://github.com/ameliashe/SocialNetworkApp", screenshot: "", hosting: .github),
		
		Project(logoImage: "images/Delta.png", title: "DeltaClock", description:
			"""
			A world clock and scheduling app with timeline-based UI, for comparing multiple cities’ time zones at a glance. Build plans across time zones, instantly see overlaps, and set smart reminders/alarms, with widgets and customizable themes ranging from Liquid Glass to Neumorphic and Retro.
			
			Built with SwiftUI, following the MVVM architecture and using SwiftData for persistence.
			""", stack: ["Swift", "SwiftUI", "Swift Data", "AdMob", "RevenueCat"], link: "", screenshot: "", hosting: .none)
	]
}
