import UIKit

public final class Sizes {
    
    public var disableStaticSizes: Bool = false
    
    
    public lazy var p360: CGFloat = PView.makeSizeStatic(eightLow: 360, tenUp: 360, withoutScale: disableStaticSizes)
    public lazy var p180: CGFloat = PView.makeSizeStatic(eightLow: 180, tenUp: 180, withoutScale: disableStaticSizes)
    public lazy var p171: CGFloat = PView.makeSizeStatic(eightLow: 171, tenUp: 171, withoutScale: disableStaticSizes)
    public lazy var p170: CGFloat = PView.makeSizeStatic(eightLow: 170, tenUp: 170, withoutScale: disableStaticSizes)
    public lazy var p160: CGFloat = PView.makeSizeStatic(eightLow: 160, tenUp: 160, withoutScale: disableStaticSizes)
    public lazy var p150: CGFloat = PView.makeSizeStatic(eightLow: 150, tenUp: 150, withoutScale: disableStaticSizes)
    public lazy var p144: CGFloat = PView.makeSizeStatic(eightLow: 144, tenUp: 144, withoutScale: disableStaticSizes)
    public lazy var p134: CGFloat = PView.makeSizeStatic(eightLow: 134, tenUp: 134, withoutScale: disableStaticSizes)
    public lazy var p130: CGFloat = PView.makeSizeStatic(eightLow: 130, tenUp: 130, withoutScale: disableStaticSizes)
    public lazy var p117: CGFloat = PView.makeSizeStatic(eightLow: 117, tenUp: 117, withoutScale: disableStaticSizes)
    public lazy var p100: CGFloat = PView.makeSizeStatic(eightLow: 100, tenUp: 100, withoutScale: disableStaticSizes)
    public lazy var p95: CGFloat = PView.makeSizeStatic(eightLow: 95, tenUp: 95, withoutScale: disableStaticSizes)
    public lazy var p85: CGFloat = PView.makeSizeStatic(eightLow: 85, tenUp: 85, withoutScale: disableStaticSizes)
    public lazy var p80: CGFloat = PView.makeSizeStatic(eightLow: 80, tenUp: 80, withoutScale: disableStaticSizes)
    public lazy var p76: CGFloat = PView.makeSizeStatic(eightLow: 76, tenUp: 76, withoutScale: disableStaticSizes)
    public lazy var p75: CGFloat = PView.makeSizeStatic(eightLow: 75, tenUp: 75, withoutScale: disableStaticSizes)
    public lazy var p72: CGFloat = PView.makeSizeStatic(eightLow: 72, tenUp: 72, withoutScale: disableStaticSizes)
    public lazy var p70: CGFloat = PView.makeSizeStatic(eightLow: 70, tenUp: 70, withoutScale: disableStaticSizes)
    public lazy var p60: CGFloat = PView.makeSizeStatic(eightLow: 60, tenUp: 60, withoutScale: disableStaticSizes)
    public lazy var p56: CGFloat = PView.makeSizeStatic(eightLow: 56, tenUp: 56, withoutScale: disableStaticSizes)
    public lazy var p50: CGFloat = PView.makeSizeStatic(eightLow: 50, tenUp: 50, withoutScale: disableStaticSizes)
    public lazy var p44: CGFloat = PView.makeSizeStatic(eightLow: 40, tenUp: 40, withoutScale: disableStaticSizes)
    public lazy var p40: CGFloat = PView.makeSizeStatic(eightLow: 40, tenUp: 40, withoutScale: disableStaticSizes)
    public lazy var p38: CGFloat = PView.makeSizeStatic(eightLow: 38, tenUp: 38, withoutScale: disableStaticSizes)
    public lazy var p36: CGFloat = PView.makeSizeStatic(eightLow: 36, tenUp: 36, withoutScale: disableStaticSizes)
    public lazy var p32: CGFloat = PView.makeSizeStatic(eightLow: 32, tenUp: 32, withoutScale: disableStaticSizes)
    public lazy var p30: CGFloat = PView.makeSizeStatic(eightLow: 30, tenUp: 30, withoutScale: disableStaticSizes)
    public lazy var p24: CGFloat = PView.makeSizeStatic(eightLow: 24, tenUp: 24, withoutScale: disableStaticSizes)
    public lazy var p22: CGFloat = PView.makeSizeStatic(eightLow: 22, tenUp: 22, withoutScale: disableStaticSizes)
    public lazy var p20: CGFloat = PView.makeSizeStatic(eightLow: 20, tenUp: 20, withoutScale: disableStaticSizes)
    public lazy var p18: CGFloat = PView.makeSizeStatic(eightLow: 18, tenUp: 18, withoutScale: disableStaticSizes)
    public lazy var p17: CGFloat = PView.makeSizeStatic(eightLow: 17, tenUp: 17, withoutScale: disableStaticSizes)
    public lazy var p16: CGFloat = PView.makeSizeStatic(eightLow: 16, tenUp: 16, withoutScale: disableStaticSizes)
    public lazy var p14: CGFloat = PView.makeSizeStatic(eightLow: 14, tenUp: 14, withoutScale: disableStaticSizes)
    public lazy var p12: CGFloat = PView.makeSizeStatic(eightLow: 12, tenUp: 12, withoutScale: disableStaticSizes)
    public lazy var p10: CGFloat = PView.makeSizeStatic(eightLow: 10, tenUp: 10, withoutScale: disableStaticSizes)
    public lazy var p8: CGFloat = PView.makeSizeStatic(eightLow: 8, tenUp: 8, withoutScale: disableStaticSizes)
    public lazy var p6: CGFloat = PView.makeSizeStatic(eightLow: 6, tenUp: 6, withoutScale: disableStaticSizes)
    public lazy var p4: CGFloat = PView.makeSizeStatic(eightLow: 4, tenUp: 4, withoutScale: disableStaticSizes)
    public lazy var p2: CGFloat = PView.makeSizeStatic(eightLow: 2, tenUp: 2, withoutScale: disableStaticSizes)
    public lazy var p1: CGFloat = PView.makeSizeStatic(eightLow: 1, tenUp: 1, withoutScale: disableStaticSizes)
    
    public func custom(_ value: CGFloat) -> CGFloat {
        return PView.makeSizeStatic(eightLow: Double(value), tenUp: Double(value), withoutScale: disableStaticSizes)
    }
    
    
    public lazy var screenSize: CGSize = UIScreen.main.bounds.size
    
    public lazy var paddingWidth: CGFloat = {
        return screenSize.width - p16 - p16
    }()
    
    public func getPaddingSize(with multiplier: CGFloat) -> CGSize {
        return getPaddingSize(for: paddingWidth * multiplier)
    }
    
    public func getPaddingSize(for height: CGFloat) -> CGSize {
        return CGSize(width: paddingWidth, height: height)
    }
    
    public static let shared = Sizes()
    private init() {}
}

public extension CGFloat {
    var inverse: CGFloat {
        return self * -1
    }
}

public protocol PViewSizesProtocol {
    var sizes: Sizes { get }
    static var scale: CGFloat { get }
    static var daScreenWidth: CGFloat { get }
    static var daLeftPadding: CGFloat { get }
    var currentLanguageIsRussian: Bool { get }
    func makeSize(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool) -> CGFloat
    static func makeSizeStatic(eightLow scale2x: Double, tenUp scale3x: Double, withoutScale: Bool) -> CGFloat
}


public extension PViewSizesProtocol {
    
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
