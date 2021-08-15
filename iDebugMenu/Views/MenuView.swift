//
//  MenuView.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/15/21.
//

import SwiftUI

struct MenuView: View {
    
    // MARK: - Properties
    
    let title: String
    
    // MARK: - Body
    
    var body: some View {
        Text(title)
            .font(.system(size: 18))
            .frame(height: 34)
    }
}

struct MenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        MenuView(title: "Console")
    }
}
