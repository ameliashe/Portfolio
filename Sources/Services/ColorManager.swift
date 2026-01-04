//
//  ColorManager.swift
//  IgniteStarter
//
//  Created by Amelia Shekikhacheva on 1/4/26.
//

import Ignite

final class ColorManager {
	static let shared = ColorManager()
    
    func color(for stack: String) -> Color {
        
        if stack.contains("SwiftUI") {
            return Color(hex: "#00068B")
        } else if stack.contains("UIKit") {
            return Color(hex: "#5DBEF1")
        } else if stack.contains("Combine") {
            return Color(hex: "#FD8240")
        } else if stack.contains("Swift") {
            return Color(hex: "#F05137")
        } else if stack.contains("Keychain") {
            return Color(hex: "#808080")
        } else if stack.contains("Firebase") {
            return Color(hex: "#D62905")
        } else if stack.contains("User Defaults") {
            return Color(hex: "#3B4B76")
        } else if stack.contains("Swift Data") {
            return Color(hex: "#426274")
        } else {
            return Color(hex: "#1772FA")
        }
    }
}
