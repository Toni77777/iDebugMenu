//
//  MenuView.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/15/21.
//

import SwiftUI

struct MenuView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
            Spacer()
            Image(systemName: "chevron.right")
        }
        .frame(height: 34)
    }
}

struct MenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        MenuView(title: "Console")
    }
}
