//
//  Constants.swift
//  M12Updated
//
//  Created by Алена on 12.05.2023.
//

import UIKit

class Constants {
    enum Colors {
        static var dustBlue: UIColor? {
            UIColor(named: "DustBlue")
        }
        
        static var greenGrass: UIColor? {
            UIColor(named: "GreenGrass")
        }
        
        static var yellowUmber: UIColor? {
            UIColor(named: "YellowUmber")
        }
    }
    
    enum Fonts {
        static var ui30Medium: UIFont? {
            UIFont(name: "UIMeduim30", size: 30)
        }
        
        static var systemText: UIFont {
            UIFont.systemFont(ofSize: 20, weight: .thin)
        }
        
        static var ui14Regular: UIFont? {
            UIFont(name: "UI-Regular", size: 14)
        }
    }
    
    enum Text {
        static let heading1 = Bundle.main.localizedString(forKey: "Insights", value: "", table: "Localizable")
        static let heading2 = Bundle.main.localizedString(forKey: "Goal achieved", value: "", table: "Localizable")
        static let heading3 = Bundle.main.localizedString(forKey: "Tap here", value: "", table: "Localizable")
        static let heading4 = Bundle.main.localizedString(forKey: "Hello, world", value: "", table: "Localizable")
    }
    
    enum Image {
        static let star = UIImage(named: "Star")
    }
}
