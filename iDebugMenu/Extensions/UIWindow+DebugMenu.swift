//
//  UIWindow+DebugMenu.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/15/21.
//

import UIKit

extension UIWindow {
    
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}
