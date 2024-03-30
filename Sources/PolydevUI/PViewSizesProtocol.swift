import UIKit

final class Sizes {
    
    lazy var p360: CGFloat = PView.makeSizeStatic(eightLow: 360, tenUp: 360)
    lazy var p180: CGFloat = PView.makeSizeStatic(eightLow: 180, tenUp: 180)
    lazy var p171: CGFloat = PView.makeSizeStatic(eightLow: 171, tenUp: 171)
    lazy var p170: CGFloat = PView.makeSizeStatic(eightLow: 170, tenUp: 170)
    lazy var p160: CGFloat = PView.makeSizeStatic(eightLow: 160, tenUp: 160)
    lazy var p150: CGFloat = PView.makeSizeStatic(eightLow: 150, tenUp: 150)
    lazy var p144: CGFloat = PView.makeSizeStatic(eightLow: 144, tenUp: 144)
    lazy var p134: CGFloat = PView.makeSizeStatic(eightLow: 134, tenUp: 134)
    lazy var p130: CGFloat = PView.makeSizeStatic(eightLow: 130, tenUp: 130)
    lazy var p117: CGFloat = PView.makeSizeStatic(eightLow: 117, tenUp: 117)
    lazy var p100: CGFloat = PView.makeSizeStatic(eightLow: 100, tenUp: 100)
    lazy var p95: CGFloat = PView.makeSizeStatic(eightLow: 95, tenUp: 95)
    lazy var p85: CGFloat = PView.makeSizeStatic(eightLow: 85, tenUp: 85)
    lazy var p80: CGFloat = PView.makeSizeStatic(eightLow: 80, tenUp: 80)
    lazy var p76: CGFloat = PView.makeSizeStatic(eightLow: 76, tenUp: 76)
    lazy var p75: CGFloat = PView.makeSizeStatic(eightLow: 75, tenUp: 75)
    lazy var p72: CGFloat = PView.makeSizeStatic(eightLow: 72, tenUp: 72)
    lazy var p70: CGFloat = PView.makeSizeStatic(eightLow: 70, tenUp: 70)
    lazy var p60: CGFloat = PView.makeSizeStatic(eightLow: 60, tenUp: 60)
    lazy var p56: CGFloat = PView.makeSizeStatic(eightLow: 56, tenUp: 56)
    lazy var p50: CGFloat = PView.makeSizeStatic(eightLow: 50, tenUp: 50)
    lazy var p44: CGFloat = PView.makeSizeStatic(eightLow: 40, tenUp: 40)
    lazy var p40: CGFloat = PView.makeSizeStatic(eightLow: 40, tenUp: 40)
    lazy var p38: CGFloat = PView.makeSizeStatic(eightLow: 38, tenUp: 38)
    lazy var p36: CGFloat = PView.makeSizeStatic(eightLow: 36, tenUp: 36)
    lazy var p32: CGFloat = PView.makeSizeStatic(eightLow: 32, tenUp: 32)
    lazy var p30: CGFloat = PView.makeSizeStatic(eightLow: 30, tenUp: 30)
    lazy var p24: CGFloat = PView.makeSizeStatic(eightLow: 24, tenUp: 24)
    lazy var p22: CGFloat = PView.makeSizeStatic(eightLow: 22, tenUp: 22)
    lazy var p20: CGFloat = PView.makeSizeStatic(eightLow: 20, tenUp: 20)
    lazy var p18: CGFloat = PView.makeSizeStatic(eightLow: 18, tenUp: 18)
    lazy var p16: CGFloat = PView.makeSizeStatic(eightLow: 16, tenUp: 16)
    lazy var p14: CGFloat = PView.makeSizeStatic(eightLow: 14, tenUp: 14)
    lazy var p12: CGFloat = PView.makeSizeStatic(eightLow: 12, tenUp: 12)
    lazy var p10: CGFloat = PView.makeSizeStatic(eightLow: 10, tenUp: 10)
    lazy var p8: CGFloat = PView.makeSizeStatic(eightLow: 8, tenUp: 8)
    lazy var p6: CGFloat = PView.makeSizeStatic(eightLow: 6, tenUp: 6)
    lazy var p4: CGFloat = PView.makeSizeStatic(eightLow: 4, tenUp: 4)
    lazy var p2: CGFloat = PView.makeSizeStatic(eightLow: 2, tenUp: 2)
    lazy var p1: CGFloat = PView.makeSizeStatic(eightLow: 1, tenUp: 1)
    
    
    lazy var screenSize: CGSize = UIScreen.main.bounds.size
    
    lazy var paddingWidth: CGFloat = {
        return screenSize.width - p16 - p16
    }()
    
    func getPaddingSize(with multiplier: CGFloat) -> CGSize {
        return getPaddingSize(for: paddingWidth * multiplier)
    }
    
    func getPaddingSize(for height: CGFloat) -> CGSize {
        return CGSize(width: paddingWidth, height: height)
    }
    
    static let shared = Sizes()
    private init() {}
}

extension CGFloat {
    var inverse: CGFloat {
        return self * -1
    }
}

protocol PViewSizesProtocol {
    var sizes: Sizes { get }
    static var scale: CGFloat { get }
    static var daScreenWidth: CGFloat { get }
    static var daLeftPadding: CGFloat { get }
    var currentLanguageIsRussian: Bool { get }
    func makeSize(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool) -> CGFloat
    static func makeSizeStatic(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool) -> CGFloat
}


extension PViewSizesProtocol {
    
    var sizes: Sizes {
        return Sizes.shared
    }
    
    static var modelName:  String  { return UIDevice.modelName }
    static var differentModel: [String] {
        ["iPhone XR", "iPhone 11", "Simulator iPhone 11", "Simulator iPhone XR"]
    }
    static var scale: CGFloat { return UIScreen.main.scale }
    static var daScreenWidth: CGFloat { return  UIScreen.main.bounds.width }
    static var daLeftPadding: CGFloat { return  scale == 2 ? 8 : 16 }
    
    var currentLanguageIsRussian: Bool {
        
        if let preferredLanguage = Locale.preferredLanguages.first, preferredLanguage.hasPrefix("ru") {
            return true
        }
        return false
    }
    
    func makeSize(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool = false) -> CGFloat {
        
        let aspectDisplay = UIScreen.main.bounds.width / UIScreen.main.bounds.height
        
        if withoutScale {
            if aspectDisplay > 0.5 {
                return CGFloat(scale2x)
            } else {
                return CGFloat(scale3x)
            }
        }

        let sizeFactorForTenAndHigher = sqrt(
            pow(UIScreen.main.bounds.height, 2) + pow( UIScreen.main.bounds.width, 2)
        ) / sqrt(pow(375, 2) + pow(812, 2))
        
        let scaleFactorForEightAndLower = sqrt(
            pow(UIScreen.main.bounds.height, 2) + pow( UIScreen.main.bounds.width, 2)
        ) / sqrt(pow(375, 2) + pow(667, 2))
        

        if aspectDisplay > 0.5 {
            /// apply scale factor for 8 iPhone and lower models
            return CGFloat(scale2x) * CGFloat(scaleFactorForEightAndLower)
        } else {
            /// apply scale factor for X iPhones and later models
            return CGFloat(scale3x) * CGFloat(sizeFactorForTenAndHigher)
        }
    }
    
    static func makeSizeStatic(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool = false) -> CGFloat {
        
        let aspectDisplay = UIScreen.main.bounds.width / UIScreen.main.bounds.height
        
        if withoutScale {
            if aspectDisplay > 0.5 {
                return CGFloat(scale2x)
            } else {
                return CGFloat(scale3x)
            }
        }

        let sizeFactorForTenAndHigher = sqrt(
            pow(UIScreen.main.bounds.height, 2) + pow( UIScreen.main.bounds.width, 2)
        ) / sqrt(pow(375, 2) + pow(812, 2))
        
        let scaleFactorForEightAndLower = sqrt(
            pow(UIScreen.main.bounds.height, 2) + pow( UIScreen.main.bounds.width, 2)
        ) / sqrt(pow(375, 2) + pow(667, 2))
        

        if aspectDisplay > 0.5 {
            /// apply scale factor for 8 iPhone and lower models
            return CGFloat(scale2x) * CGFloat(scaleFactorForEightAndLower)
        } else {
            /// apply scale factor for X iPhones and later models
            return CGFloat(scale3x) * CGFloat(sizeFactorForTenAndHigher)
        }
    }
}
