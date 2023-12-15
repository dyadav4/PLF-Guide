//
//  ThemeStyle.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/6/23.
//

import SwiftUI

struct ThemeStyle {
    private init() {}
    
    struct Colors {
        private init() {}
        static let theme1Color = UIColor(red: 0/255, green: 106/255, blue: 255/255, alpha: 1.0)
        static let theme1LightColor = Color(theme1Color).opacity(0.5)
        
        static let systemBackgound = UIColor.systemBackground
        
        static let labelColor = Color(.label)
        static let labelLightColor = labelColor.opacity(0.1)
        
        static let whiteColor = UIColor.white
    }
    
    struct FontSize {
        private init() {}
        static let smallFont20 = Font.system(size: 20)
        static let medFont30 = Font.system(size: 30)
        static let largeFont40 = Font.system(size: 40)
    }
    
    struct CornerRadius {
        private init() {}
        static let radius4 = 4.0
        static let radius8 = 8.0
        static let radius12 = 8.0
        static let radius16 = 16.0
    }
    
    struct Width {
        private init() {}
        static let width2 = 2.0
    }
}
