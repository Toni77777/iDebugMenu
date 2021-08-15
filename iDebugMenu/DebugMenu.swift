//
//  DebugMenu.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/8/21.
//

import UIKit
import SwiftUI

final class DebugMenu {
    
    // MARK: - Public
    
    static let shared = DebugMenu()
    
    func setup() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.didShakeNotification),
            name: .deviceDidShakeNotification,
            object: nil
        )
    }
    
    // MARK: - Notifications
    
    @objc private func didShakeNotification(notification: NSNotification) {
        guard let window = UIApplication.shared.windows.first else { return }
        let debugMenuView = DebugMenuView()
        let menuViewController = UIHostingController(rootView: debugMenuView)
        menuViewController.modalPresentationStyle = .fullScreen
        window.rootViewController?.present(menuViewController, animated: true, completion: nil)
    }
}
