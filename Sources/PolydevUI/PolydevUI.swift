// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public final class PolydevUI {
    
    public static func openPolydevStudio() {
        guard let url = URL(string: "https://polydev.studio") else { return }
        UIApplication.shared.open(url)
    }
    
}
