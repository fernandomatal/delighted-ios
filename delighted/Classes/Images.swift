import UIKit

enum Images: String {

    case check = "check"

    case x = "x"
    case close = "close"
    case star = "star"
    case starOutline = "star_outline"

    case smileyVeryUnhappy = "smilies_very_unhappy"
    case smileyUnhappy = "smilies_unhappy"
    case smileyNeutral = "smilies_neutral"
    case smileyHappy = "smilies_happy"
    case smileyVeryHappy = "smilies_very_happy"
    case smileyVeryDisappointed = "smilies_very_disappointed"

    case thumbsUp = "thumbs_up"
    case thumbsDown = "thumbs_down"

    var image: UIImage? {
        let bundle: Bundle
        #if SWIFT_PACKAGE
        bundle = Bundle.module
        #else
        bundle = Bundle(for: ImagesClassForBundle.self)
        #endif
        
        return UIImage(named: rawValue, in: bundle, compatibleWith: nil)
    }

    var templateImage: UIImage? {
        return image?.withRenderingMode(.alwaysTemplate)
    }
}

private class ImagesClassForBundle {

}
